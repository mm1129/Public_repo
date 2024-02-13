#include "simu_itof.hpp"
#include "simu_ftoi.hpp"
#include "fpu_common.hpp"
#include "simu_fadd.hpp"
#include "fsub_sim.hpp"
#include "fdiv_fmul.hpp"
#include "simu_fsqrt2.hpp"
#include <map>
#include <iostream>
#include <string.h>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <iterator>
#include <vector>
#include <algorithm>
#include <stdio.h>
#include <string>
#include <time.h> 
#include <unistd.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
#define ull uint64_t
bool debug = false;
bool print_mem = false; 
string debug_op;
string break_label;
int64_t clock_count;
queue<int32_t> que; 
string s = "sim_result.ppm";
ofstream ofs(s);
string s2 = "sim_calc.txt";
ofstream ofs2(s2);
#define SIZE 1024
#define L_SIZE 4096
vector<int64_t> reg_val(33);
vector<float> freg(33);
union data {
    int64_t i;
    float f;
};
#define MEMORY_SIZE 81880000 
vector<union data> M(MEMORY_SIZE+1);
vector<vector<int64_t> > L1(L_SIZE); 
int64_t rd, rs1, rs2, rs3;
int64_t imm;
Bit32 addr = 0;
uint64_t tag, index_, offset;
int64_t hit_count, miss_count;
int dirty_miss, clean_miss;
int way_num = 2;
int way_idx;
int acc_bit = 3;
int TAGMSB    = 26; 
int TAGLSB    = 15; 
int INDEXMSB  = 14; 
int INDEXLSB  = 3 ; 
int OFFSETMSB =  2; 
int OFFSETLSB =  0;
int offset_dig = OFFSETMSB - OFFSETLSB + 1;
int index_dig = INDEXMSB - INDEXLSB + 1;
int tag_dig = TAGMSB - TAGLSB + 1;
        
int addr_dig = 27;
bool hit; bool flag;
bool float_sign = false;
int32_t q;
bool fast_mode = true;
string debugmode(int argc, char* argv[]){
    
    
    int i, opt;
    opterr = 0; 
    while ((opt = getopt(argc, argv, "fgdh:")) != -1) {
        
        switch (opt) {
            case 'f':
                fast_mode = true; debug = false;
                printf("-fがオプションとして渡されました\n");
                break;
            case 'g':
                fast_mode = false;
                printf("-gがオプションとして渡されました\n");
                break;
                
            case 'd':
                printf("-d：デバッグ\n");
                debug = true;
                break;
            case 'h':
                printf("-hがオプションとして渡されました\n");
                printf("引数optarg = %s\n", optarg);
                break;
            default:
                
                printf("Usage: %s [-f] [-g] [-h argment] arg1 ...\n", argv[0]);
                break;
        }
    }
    string s;
    
    for (i = optind; i < argc; i++) {
        s += argv[i];      
        printf("arg = %s\n", argv[i]);
    }
    cout << s << endl;
    
    if(debug == true){
        
        string debug_op = s;
        if(debug_op.find("printmem") != std::string::npos){
            print_mem = true;
            
        }else if(debug_op.find("break") != std::string::npos){
            debug_op.erase(0,5);
            break_label = debug_op;
            cout << "break_label " << break_label << endl;
        }
    }
    
    return s;
}
string bury_zero(int64_t imm, int dig_num){
    
    
    
    
    std::ostringstream ss;
    
    ss << setw(dig_num+1) << setfill('0') << imm; 
    std::string s(ss.str());
	
    return s;
    
}
    
template<typename T>
T read_binary_as(std::istream& is)
{
    T val;
    is.read(reinterpret_cast<char*>(std::addressof(val)),
            sizeof(T));
    return val;
}
void sld_to_ppm(){
    string filename ("contest.dat"); 
    vector<string> lines;
    string line;
    string s1 = "sim_base.ppm";
    ofstream ofs1(s1);
    ifstream file(filename, ios::binary);
    
    
    
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        
    }
    
    
    int64_t idx = 8192;
    while(!file.eof()){
        
        int32_t q = read_binary_as<std::int32_t>(file);
        
        
        
        if(q < -SIZE || q > SIZE){
            
            M.at(idx).f = bit_to_float(q);
            cout << idx << "f " << M.at(idx).f << endl;
        }else{
            M.at(idx).f = (float)q;
            cout << idx << "i " << M.at(idx).f << endl;
        }
        
        
        idx += 4;
    }
}
struct Status{
    int valid;
    int dirty;
    int acc; 
};
vector<vector <Status> > L_status(2, vector<Status>(L_SIZE));
vector<vector <uint64_t> > L1_tag(2, vector<uint64_t>(L_SIZE));
bool sign_in, sign_out;
int LRU(vector<vector <Status> > L_status, uint64_t index_){
    
    
    int min_way = 0;
    int acc_min = L_status[0][index_].acc;
    int  acc_max = acc_min; 
    
    int max_way = 0;
    for (int i = 1; i < way_num; i++) {
        
        
        int acc_i = L_status[i][index_].acc;
        if(acc_i < acc_min){
            min_way = i;
            acc_min = acc_i; 
        }else if(acc_i > acc_max){
            acc_max = acc_i; 
            max_way = i;
        }
    }
    
    if(acc_max < 7){
        L_status[min_way][index_].acc = acc_max;    
    } 
    else{
        
        
        
        L_status[min_way][index_].acc = 0;
        L_status[max_way][index_].acc = 0;
    }
    
    return min_way;
    
}
double sign(double A){
    if(A>0) return 1;
    else if(A<0) return -1;
    else return 0;
}
bool special;
int64_t op_to_num(string op){
    int num = 0;
    
    if (op == "add") num = 33;
    else if (op == "sub") num =34;
    else if (op == "xor") num =35;
    else if (op == "or") num =36;
    else if (op == "and") num =37;
    else if (op == "sll") num =38;
    else if (op == "srl") num =39;
    else if (op == "sra") num =40;
    else if (op == "slt") num =41;
    else if (op == "sltu") num =42;
    else if (op == "mul") num =43;
    else if (op == "mulh" || op == "mulsu") num =44;
    else if (op == "div" || op == "divu") num =45;
    else if (op == "rem" || op == "remu") num =46;
    
    else if (op == "mv") {cout << "op == mv?"<< endl;return -1;}
    else if (op == "addi") num =50;
    else if (op == "xori") num =51;
    else if (op == "ori") num =52;
    else if (op == "andi") num =53;
    else if(op == "slli") num = 54;
    else if (op == "srli") num = 55;
    else if (op == "srai") num = 56;
    else if (op == "slti") num = 57;
    else if (op == "sltiu") num = 58;
    
    else if(op == "lb") num = 60;
    else if (op == "lh") num = 61;
    else if (op == "lw") num = 62;
    else if (op == "lbu") num = 63;
    else if (op == "lhu") num = 64;
    
    else if (op == "sb") num = 65;
    else if (op == "sh") num = 66;
    else if (op == "sw") num = 67;
    
    else if (op == "beq") num = 70;
    else if(op == "bne") num = 71;
    else if (op == "blt") num = 72;
    else if(op == "bge") num = 73;
    else if (op == "bltu") num = 74;
    else if (op == "bgeu") num = 75;
    
    else if(op == "jal") num = 76;
    else if(op == "jalr") num = 59; 
    else if(op == "lui") num = 77;
    else if (op == "auipc") num = 78; 
    else if (op == "addj") num = 79;
    else if (op == "flw") num = 81;
    else if (op == "fsw") num = 82;
    else if (op == "fmadd") num = 83;
    else if (op == "fmsub") num = 84;
    else if (op == "fnmadd") num = 85;
    else if (op == "fnmsub") num = 85;
    else if (op == "fadd") num = 87;
    else if (op == "fsub") num = 88;
    else if (op == "fmul") num = 89;
    else if (op == "fdiv") num = 90;
    else if (op == "fsqrt") num = 91;
    else if (op == "fsgnj") num = 92;
    else if (op == "fsgnjn") num = 93;
    
    else if (op == "fabs") num = 94;
    else if (op == "fmin") num = 95;
    else if (op == "fmax") num = 96;
    
    else if (op == "fmv") num = 1;
    else if (op == "feq") num = 3;
    else if (op == "flt") num = 4;
    else if (op == "fle") num = 5;
    else if (op == "ftoi") num = 6;
    else if (op == "itof") num = 7;
    else if (op == "out") num = 10;
    else if (op == "in") num = 11;
    return num;
}
int64_t reg_index(string a0){ 
    
    
    int64_t num = 0;
    
    
    
    if((a0[0] >= '0') && (a0[0] <= '9')){ 
        
        
        num = atoi(a0.c_str());
        
        
    }else if(a0[0] == 'x'){
        a0.erase(0, 1);
        num = atoi(a0.c_str());
        return num;
    }else if(a0[0] == 'f'){
        
        a0.erase(0, 1);
        num = atoi(a0.c_str());
        return num;
    }else if(a0[0] == '-'){
      
        num = atoi(a0.c_str());
        
        return num;
    }else{
        
        
        string op = a0;
        if(op == "zero") num = 0; 
        else if(op == "ra") num = 1; 
        else if(op == "sp") num = 2; 
        
        
        
        else if(op == "a0") num = 10;
        else if(op == "a1") num = 11;
        
        
        
        else if(a0 == ""){}
        else{
            
            
            
            num = 32; 
        }
    
    
    
    }
    return num; 
    
    
}
enum Type {
        R, I_1, I_2, S, B, U, J, F, O
};
struct Op {
  
    enum Type _type;
    
    int conv_type(int op){
        if(op >= 30 && op < 49) _type = R;
        else if(op >= 49 && op < 60) _type = I_1;
        else if(op >= 60 && op < 65) _type = I_2;
        else if(op >= 65 && op < 70) _type = S;
        else if(op >= 70 && op <= 75) _type = B;
        else if(op == 76) _type = J;
        else if(op >= 77 && op < 80) _type = U;
        else if (op == 10 || op == 11)  {_type = O; cout << "type O" << endl; return -1;}
        else _type = F;
        
        
        
        return _type;
    }
};
int main(int argc, char *argv[]){
    
    
    debug_op = debugmode(argc, argv); 
    bool break_symbol = false;
    bool step_symbol = false;
    bool print_symbol = false;
    sld_to_ppm();
    string filename ("minrt_inline.s"); 
    vector<string> lines;
    string line;
    ifstream file(filename);
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        return EXIT_FAILURE;
    }
    
    
    int pc = 0;
    int pc_start = 0;
    std::map<string, int> label;
    map<int, string> con_line;
    map<int, string> con_label;
    map<string,string> f_data;
    
    
    
    while(getline(file, line)){
        
        
        
        cout << "PC " << pc << endl;
        if(line.find("l.") < 100 && line.find(':') < 100 && line.find('!') != std::string::npos){
            vector<string> words; 
            words.clear();
            string word = "";
            for(int i = 0; i < line.size(); i++){
                if(line.at(i) == '\n' ){
                    
                    break;
                }
                if((line.at(i) == '!') || line.at(i) == ':' || line.at(i) == ' ' ||(line.at(i) == '\t') ){
                    continue;
                }
                else{
                    word.push_back(line.at(i));
                    if(i == line.size()-1){
                        if(word != ""){
                            words.push_back(word);
                        }
                    }
                    else if(line.at(i+1) == ':'|| line.at(i+1) == '\n'){
                        words.push_back(word);
                        
                        word = "";
                        
                    }
                }
                
                
            }
            
            cout << words.at(0) << " " << words.at(1) << endl;
            f_data[words.at(0)] = words.at(1); 
            
            
            
        }else if(line.find(':') < 100){
            
            line.erase(line.find(':')); 
            if(line.find("min_caml_start") != std::string::npos){
                pc_start = pc;
            }
            label[line] = pc; 
            con_label[pc] = line;
            
        
            
        }else if (line.size() > 0){
            if (line[1] == '#' || line.at(0) == '.'){}
            else{
                con_line[pc] = line;
                pc += 4;
            }        
        }else{}
        
    }
    cout << "fileclose" << endl;
    file.close();
    int pc_size = pc;
    
    
    int64_t instr_count = 0;
    hit_count = 0;
    miss_count = 0;
    int pop_count = 0;
    
    clock_t start = clock(); 
       
 
    struct Op_words{
        int64_t op_num;
        int64_t rd;
        int64_t rs1;
        int64_t rs2;
        int64_t rs3;
        union data imm;
        bool break_sign;
        bool float_sign;
        
        
        
    };
    vector<Op_words> op_pc(pc_size+4); 
    vector<int64_t> op_load(pc_size+4);
    
    pc = 0;
    
    while(pc < pc_size) {
        if(con_label.count(pc)){
            cout << '[' << con_label[pc] << "] (" << pc << ')' <<endl;
            
            
            
            
        }
        special = false;
        
        
        line = con_line[pc];
        
        
        line += '\n';
        
        vector<string> words; 
        words.clear();
        string word = "";
        
        
        reg_val[0] = 0;
        
        print_symbol = false;
       
        
        
        if(line.find('*') != std::string::npos){ 
            cout << "   found * " << endl;
            line.erase(line.find('*'),1);
            
            break_symbol = true;
            op_pc[pc].break_sign = true;
        }
        
        for(int i = 0; i < line.size(); i++){
            if(line.at(i) == '#'|| line.at(i) == '!'|| line.at(i) == '\n' || line.at(i) == ')'){
                
                break;
            }
            if(line.at(i) == '%' ||line.at(i) == '*' || line.at(i) == '(' || line.at(i) == ' ' ||(line.at(i) == '\t') || (line.at(i) == ',')){
                continue;
            }
            else{
                word.push_back(line.at(i));
                if(line.at(i+1) == '('|| line.at(i+1) == ')' || line.at(i+1) == '#' || line.at(i+1) == '\n' || line.at(i+1) == ' ' || line.at(i+1) == ',' || (line.at(i+1) == '\t')){ 
                    words.push_back(word);
                    
                    word = "";
                    
                }
            }
            
            if(i == line.size()-1){
                if(word != ""){
                    words.push_back(word);
                }
            }
        }
        
        
        int words_i = 0;
        while(words_i < words.size()){
            
            words_i++;
        }
        
        string opcode, a0, a1, a2, a3;
        
        
        
        for(int i = 1; i < words.size() ; i++){ 
            
            int label_find = label.count(words[i]); 
            int data_find = f_data.count(words[i]); 
            
            if(data_find > 0){
                op_pc[pc].float_sign = true;
                words[i] = f_data[words[i]];
                
                
                op_pc[pc].imm.f = stof(words[i]);
            }
            else if(label_find > 0){
                
                int a_pc = label[words[i]];
                
                int diff = a_pc - pc; 
                
                words[i] = to_string(diff);
                
                if(words[i] == "input"){
                    sign_in = true; special = true;
                }if(words[i] == "output"){
                    sign_out = true; special = true;
                }
            }
        }
        
        opcode.clear();
        a0.clear(); a1.clear(); a2.clear(); a3.clear();
        opcode = words.at(0); 
        
        if(words.size() > 1) a0 = words.at(1); 
        if(words.size() > 2) a1 = words.at(2); 
        if(words.size() > 3) a2 = words.at(3); 
        if(words.size() > 4 )a3 = words.at(4);
        
         
        imm = 0;
        
        rd = 0; rs1 = 0; rs2 = 0; rs3 = 0;
        
        
        if(opcode == "li") {a2 = a1; a1 = "zero"; opcode = "addi";}
        else if(opcode == "j") {opcode = "jal"; a1 = a0; a0 = "zero";}
        else if(opcode == "jal" && a1 == "") {a1 = a0; a0 = "ra";}
        
        else if(opcode == "bgt") {opcode = "blt"; swap(a0,a1);}
        else if(opcode == "ble") {opcode = "bge"; swap(a0,a1);}
        else if(opcode == "bgtu") {opcode = "bltu"; swap(a0,a1);}
        else if(opcode == "bleu") {opcode = "bgeu"; swap(a0,a1);}
        else if(opcode == "beqz") {opcode = "beq"; a2 = a1; a1 = "zero";}
        else if(opcode == "bnez") {opcode = "bne"; a2 = a1; a1 = "zero";}
        
        else if(opcode == "jalr" && a2 == ""){
            
            a2 = "0";
        }else if(opcode == "ret"){
            
            opcode = "jalr"; a0 = "x0"; a1 = "x1"; a2 = "0";
        }else if(opcode == "nop"){ 
            opcode = "addi"; a0 = "x0"; a1 = "x0"; a2 = "0";
        
        
        }
        else if(opcode == "mv"){
            if(a1[0] == 'x'){opcode = "addi", a2 = "0";}
            else if(a1[0] == 'f'){opcode = "fadd", a2 = "f31";}
            else{opcode = "fmv";}
        } 
        
        
        int64_t op_num = op_to_num(opcode);
        op_pc[pc].op_num = op_num;
        
        
        
        
        if(op_num >= 30 && op_num < 49){ 
            
            op_pc[pc].rd =  reg_index(a0);
            op_pc[pc].rs1 = reg_index(a1);
            op_pc[pc].rs2 = reg_index(a2); 
            op_pc[pc].imm.i = 0;
            
        
        
        }else if(op_num >= 50 && op_num < 60){
            
            op_pc[pc].rd =  reg_index(a0);
            op_pc[pc].rs1 = reg_index(a1);
            
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a2);
            op_pc[pc].rs2 = 0;
            
        }else if(op_num >= 60 && op_num < 65){
            
            op_pc[pc].rd = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rs2 = 0;
            
            
        }else if(op_num >= 65 && op_num < 70){ 
            
            op_pc[pc].rs2 = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rd = 0;
            
        }else if(op_num >= 70 && op_num <= 75){ 
            
            op_pc[pc].rs1=  reg_index(a0);
            op_pc[pc].rs2 = reg_index(a1);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a2);
            op_pc[pc].rd = 0;
            
        }else if(op_num == 76){
            
            op_pc[pc].rd = reg_index(a0);
            
            cout << a1 << endl;
            if(a1[0] == '%' || a1[0] == 'x'){
                op_pc[pc].rd = reg_index(a1);
            }else{
                op_pc[pc].imm.i = reg_index(a1);
            }
            op_pc[pc].rs2 = 0;
            
        }else if(op_num >= 77 && op_num < 80){ 
            
            op_pc[pc].rd = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = 0;
            op_pc[pc].rs2 = 0;
        }else if(op_num == 81){ 
            
            op_pc[pc].rd = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rs2 = 0;
            
        }else if(op_num == 82){ 
            op_pc[pc].rs2 = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rd = 0;
            
        }else if(op_num == 10 || op_num == 11){ 
            op_pc[pc].rd = reg_index(a0);
            op_pc[pc].rs1 = 0;
            
        }else{ 
            op_pc[pc].rd =  reg_index(a0);
            op_pc[pc].rs1 = reg_index(a1);
            
            op_pc[pc].rs2 = reg_index(a2);
            op_pc[pc].rs3 = reg_index(a3);
            
        }
        
        
        pc += 4;
    }
        
    
    pc = pc_start;
    
    int pre_pc = pc_start+4;
    float frd, frs1, frs2, frs3, fimm;
    string filename2 = "finv_data.coe"; 
    in_data(filename2);
    
    in_data_sqrt(); 
    while(pc < pc_size){
        
        
        
        
        reg_val.at(0) = 0;
        freg.at(30) = 0;
        if(debug){
            if(con_label.count(pc)){
            
                cout << '[' << con_label[pc] << "] (" << pc << ')' <<endl;
            }
        }
        
        if(debug) cout << "[" << pc << "]" << endl;
        if(debug) cout << con_line[pc] << endl;
        
        Op_words opline = op_pc.at(pc);
        int64_t rd, rs1, rs2, rs3;
        rd = 0; rs1 = 0; rs2 = 0; rs3 = 0; imm = 0;
        
        int op_num = opline.op_num;
        int64_t imm;
        
        print_symbol = false;
        break_symbol = opline.break_sign;
        
        
        
        
        
        
        
        
        
        
        
        string str_next;
        if(break_symbol) cout << "line" << con_line[pc] << endl;
        if(break_symbol == true || step_symbol == true){ 
            
            cout << "   s or n or m" << endl; 
            cin >> str_next;
            if(str_next == "m"){ 
                print_symbol = true;
                
                
                for(int i = 8192; i <= 9488; i++){
                    if(M.at(i).f){
                        cout << "FM[" << i << "] " << M.at(i).f << endl;
                    }
                    if(M.at(i).i){
                        cout << "M[" << i << "] " << M.at(i).i << endl;
                    }
                }
                for(int i = 0; i <= 32; i++){
                    if(freg[i]){
                        cout << "f" << i << " " << freg.at(i) << endl;
                    }
                    if(reg_val[i]){
                        cout << 'x' << i << " " << reg_val[i] << endl;
                    }
                }
                
                
                
                
                
                cout << "   s or n" << endl; 
                cin >> str_next;
                
            }
            if(str_next == "s") {break_symbol = true; step_symbol = true; }
            else if(str_next == "n") step_symbol = false;
            
            else break;
        }
        if(step_symbol == false) break_symbol = false; 
        debug = step_symbol;
        Op op; 
        switch(op.conv_type(op_num)){
            case R: 
                
                
                rd = 0;
                rs1 = reg_val.at(opline.rs1);
                rs2 = reg_val.at(opline.rs2);
                
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rs1 || op_load.at(pre_pc/4) == opline.rs2){
                    
                        
                        
                        clock_count++;
                    }
                } 
                if(op_num == 33){ 
                    rd=rs1+rs2;
                    
                }else if(op_num == 34){ 
                    rd=rs1-rs2;
                    
                }else if(op_num == 35){ 
                    rd=rs1 xor rs2; 
                    
                }else if(op_num == 36){ 
                    rd=rs1|rs2;
                    
                }else if(op_num == 37){ 
                    rd=rs1&rs2;
                    
                }else if(op_num == 38){ 
                    rd=rs1<<rs2;
                    
                }else if(op_num == 39){ 
                    rd=rs1>>rs2;
                    
                }else if(op_num == 40){ 
                    rd=rs1>>rs2;
                    
                }else if(op_num == 41){ 
                    rd = (rs1 < rs2)?1:0;
                    
                }else if(op_num == 42){ 
                    rd = (rs1 < rs2)?1:0;
                    
                
                }else if(op_num == 43){ 
                    rd = (rs1 * rs2)%((int)pow(2,32));
                    
                }else if(op_num == 44){ 
                    rd = (rs1 * rs2)%((int)pow(2,64));
                    
                }else if(op_num == 45){ 
                    rd = rs1/rs2;
                    
                }else if(op_num == 46){ 
                    rd = rs1%rs2;
                    
                }
                
                reg_val.at(opline.rd) = rd; 
                
                if(debug) cout << "   R " << rd << " "<< rs1 <<" " << rs2 << endl;
                instr_count++; 
                pre_pc = pc; 
                pc += 4;
                continue;
            case I_1:
                
                
                
                
                
                
                
                
                
                
                
                
                
                rd = 0; 
                
                rs1 = reg_val.at(opline.rs1);
                
                imm = opline.imm.i;
                if(!fast_mode){ 
                    if(op_load.at(pre_pc/4) == opline.rs1){ 
                    
                        
                        
                        clock_count++;
                    }
                }
                pre_pc = pc;
                if(op_num == 50){ 
                    
                    rd= rs1 +imm;
                    pc += 4;
                }else if(op_num == 51){ 
                    rd=rs1 xor imm;
                    pc += 4;
                }else if(op_num == 52){ 
                    rd=rs1|imm;
                    pc += 4;
                }else if(op_num == 53){ 
                    rd=rs1&imm;
                    pc += 4;
                }else if(op_num == 54){ 
                    rd = rs1 << (imm & ((1<<5)-1)); 
                    pc += 4;
                }else if(op_num == 55){ 
                    rd = rs1 >> (imm & ((1<<5)-1)); 
                    pc += 4;
                }else if(op_num == 56){ 
                    rd = rs1 >> (imm & ((1<<5)-1));
                    pc += 4;
                }else if(op_num == 57){ 
                    rd = (rs1 < imm)?1:0;
                    pc += 4;
                }else if(op_num == 58){ 
                    rd = (rs1 < imm)?1:0;
                    pc += 4;
                }else if(op_num == 59){ 
                    rd=pc+4;
                    pc=rs1+imm;
                    if(debug) cout << "jalr " << rd << "next_pc" << pc << endl;
                } 
                
                
                reg_val.at(opline.rd) = rd; 
                
                if(debug) cout << "   #I_1 " << rd << " "<< rs1 <<" " << rs2 << endl;
                
                instr_count++; 
                continue;
            case I_2:
                
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rs1){
                        
                        
                        
                        clock_count++;
                    }
                }
                
                rd = 0; 
                imm = opline.imm.i;
                rs1 = reg_val.at(opline.rs1);
                
                if(!fast_mode){
                    op_load.at(pc/4) = opline.rd;
                    addr = rs1 + imm;
                    if(addr < 0) addr = ~addr + 1;
                    
                    tag = addr >> (index_dig+offset_dig);
                    
                    index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                    offset = addr & ((1<<offset_dig) - 1);
                    
                    if(index_ < 0 || index_ > L_SIZE){
                        cout << index_ << endl;
                        return -1;
                    }
                    
                    
                    
                    
                    
                    hit = false;
                    for (int i = 0; i < way_num; i++) {
                        
                        if((L1_tag[i].at(index_) == tag) && (L_status[i].at(index_).valid)){
                            hit_count++;
                            hit = true;
                            
                            break;
                        }
                    }
                    if(hit == false){
                        miss_count++;
        
                        way_idx = LRU(L_status, index_);
                        
                        if((L_status[way_idx].at(index_)).dirty == 1){
                            dirty_miss++; 
                            (L_status[way_idx].at(index_)).dirty = 0; 
                        }else{
                            clean_miss++;
                        }
                        
                        L1_tag[way_idx].at(index_) = tag;
                        L_status[way_idx].at(index_).valid = 1;
                    } 
                }
                
                
                
                
                
                
                
                
                if(rs1+imm >= 8192 && rs1+imm <= 9488){
                    
                    
                    rd = (int64_t)M.at(rs1+imm).f;
                    
                }else rd = M.at(rs1+imm).i;
                
                
                
                pre_pc = pc; 
                pc += 4;
                
                reg_val.at(opline.rd) = rd; 
                
                if(debug) cout << "   #I_2 " << rd << " "<< rs1 <<" " << rs2 << endl;
                
                instr_count++; 
                continue;
            case S:
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rs1 || op_load.at(pre_pc/4) == opline.rs2){
                        clock_count++;
                    }
                }
                rs1 = reg_val.at(opline.rs1);
                rs2 = reg_val.at(opline.rs2);
                imm = opline.imm.i;
                
                if(opline.rs1 == 5 && op_num == 67){
                    
                    ofs << (char)rs2; 
                }
                
                
                if(rs1+imm > MEMORY_SIZE){
                     for(int i = 0; i < 32; i++){
                        
                        if(freg[i]){
                            cout << i << " " << freg.at(i) << endl;
                        }
                        if(reg_val[i]){
                            cout << i << " " << reg_val.at(i) << endl;
                        }
                    }
                    cout << rs1+imm << "メモリオーバー" << MEMORY_SIZE << endl;
                    return -1;
                }
                if(fast_mode){
                    if(op_num == 65){ 
                        
                        
                        M.at(rs1+imm).i = rs2%128; 
                    }else if(op_num == 66){ 
                        
                        
                        M.at(rs1+imm).i  = rs2%65536;
                    }else if(op_num == 67){ 
                        
        
                        M.at(rs1+imm).i  = rs2%4294967296;
                    }
                }else{
                    addr = rs1 + imm;
                    if (addr < 0) addr = ~addr + 1;
                    
                    tag = addr >> (index_dig+offset_dig);
                    index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                    offset = addr & (1<<offset_dig)-1;
                    
                    
                    
                    
                    flag = 0;
                    for(int w=0; w < way_num; w++){ 
                        
                        
                        if((L1_tag.at(w).at(index_) == tag) && (L_status.at(w).at(index_).valid)){ 
                            uint64_t data_num = uint64_t(offset);
                            if(op_num == 65){ 
                                
                                
                                M[rs1+imm].i = rs2%128; 
                            }else if(op_num == 66){ 
                                
                                
                                M[rs1+imm].i  = rs2%65536;
                            }else if(op_num == 67){ 
                                
                                M[rs1+imm].i  = rs2%4294967296;
                            }
                            
                            L_status.at(w).at(index_).valid = 1;
                            
                            L_status.at(w).at(index_).dirty = 1;
                            if(L_status.at(w).at(index_).acc < 8) L_status.at(w).at(index_).acc += 1;
                            
                            flag = 1;
                            hit_count++;
                            
                            break;
                            
                        }
                        
                    }
                    if(flag == 0){
                        
                        miss_count++;
                        
                        way_idx = LRU(L_status, index_);
                        
                        
                        flag = 1;
                        
                        int w = way_idx;
                        
                        
                        if(op_num == 65){ 
                            
                            
                            M[rs1+imm].i  = rs2%128; 
                        }else if(op_num == 66){ 
                            
                            
                            M[rs1+imm].i  = rs2%65536;
                        }else if(op_num == 67){ 
                            
                            
                            
                            M[rs1+imm].i  = rs2%4294967296;
                        }
                        (L_status[way_idx].at(index_)).valid = 1; 
                        L_status[way_idx].at(index_).dirty = 1;
                        if(L_status.at(w).at(index_).acc < 8) L_status[way_idx].at(index_).acc += 1;  
                        L1_tag.at(w).at(index_) = tag;
                        
                        flag = 1;
                        
                    }
                }
                pre_pc = pc; 
                pc += 4;
                if(debug) cout << "   #S " << M.at(rs1+imm).i << " "<< rs1 <<" " << imm << endl;
                instr_count++; 
                continue;
            case B:
                
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rs1 || op_load.at(pre_pc/4) == opline.rs2){
                        
                        
                        
                        clock_count++;
                    }
                }    
                rs1 = reg_val.at(opline.rs1);
                rs2 = reg_val.at(opline.rs2);
                imm = opline.imm.i;
                
                
                
                
                
                pre_pc = pc;
                if(op_num == 70){ 
                    if(rs1 == rs2) {pc += imm; clock_count+= 5;}
                    else {pc += 4;}
                }else if(op_num == 71){ 
                    if(rs1 != rs2) { pc += imm; clock_count+= 5;}
                    else {pc += 4;}
                }
                else if(op_num == 72){ 
                    
                    if(rs1 < rs2) { pc += imm; clock_count+= 5;}
                    else {pc += 4;}
                    
                }else if(op_num == 73){ 
                    if(rs1 >= rs2) {
                        pc += imm; 
                        clock_count+= 5;
                    }
                    else {pc += 4;}
                }else if(op_num == 74){ 
                    if(rs1 < rs2) { pc += imm; clock_count+= 5;}
                    else {pc += 4;}
                }else if(op_num == 75){ 
                    if(rs1 >= rs2) {pc += imm; clock_count+= 5;}
                    else {pc += 4;}
                }
                
                
                if(debug) cout << "  #B " << rs1 <<" " << rs2 <<" " << imm << endl;
                instr_count++; 
                continue;
            case J:
                imm = opline.imm.i;
                
                
                
                
                
                
                
                
                rd = 0; 
                if(op_num == 76){ 
                    
                    
                    
                    rd=pc+4; 
                    pre_pc = pc; 
                    pc+=imm;
                    
                    
                }
                
                
                reg_val.at(opline.rd) = rd; 
                
                if(debug) cout << "  #J " << rd << " "<< imm << endl; 
                
                instr_count++; 
                continue;
            
                
                
            
            case U:
                imm = opline.imm.i;
                if(op_num == 77){ 
                    rd = imm << 12;
                }else if(op_num == 78){ 
                    rd=pc+(imm<<12);
                }else if(op_num == 79){ 
                    rd = imm;
                }
                pre_pc = pc; 
                pc += 4;
                
                reg_val.at(opline.rd) = rd; 
                
                if(debug) cout << "   #U " << rd << " "<< imm << endl;
                instr_count++; 
                continue;
            case O:     
                if(op_num == 10){ 
                    rd = reg_val.at(opline.rd);
                    ofs << (char)rd; 
                    
                }else if(op_num == 11){      
                    q = que.front();
                    que.pop();
                    if(q < -SIZE || q > SIZE){
                        q = bit_to_float(q); 
                        freg.at(opline.rd) = q;
                    } 
                    
                    else reg_val.at(opline.rd) = (int)q;
                    if(debug) cout << "pop_count " << pop_count << endl;
                    pop_count++;
                    if(pop_count >= 325){ 
                        cout << "pop_count " << pop_count << endl;
                        step_symbol = true; debug = true;
                        string str1;
                        cin >> str1;
                    }
                }
                if(debug) cout << reg_val.at(opline.rd) << " " << opline.rd << endl;
                pre_pc = pc;
                pc += 4;
                continue;               
            case F:
                
                
                
                frd = 0; frs1 = 0; frs2 = 0; frs3 = 0; fimm = 0;
                
                if(op_num == 81){ 
                    if(!fast_mode){
                        if(op_load.at(pre_pc/4) == opline.rs1){
                            clock_count++;
                        }
                    } 
                    
                    rs1 = reg_val.at(opline.rs1);
                    if(opline.float_sign) fimm = opline.imm.f; 
                    else imm = opline.imm.i;
                    if(!fast_mode){
                        op_load.at(pc/4) = opline.rd;
                        addr = (rs1 + imm);
                        if(addr < 0) addr = ~addr + 1;
                        
                        tag = addr >> (index_dig+offset_dig);
                        
                        index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                        offset = addr & ((1<<offset_dig) - 1);
                        
                        if(index_ < 0 || index_ > L_SIZE){
                            cout << index_ << endl;
                            return -1;
                        }
                    
                        hit = false;
                        for (int i = 0; i < way_num; i++) {
                            
                            if((L1_tag[i].at(index_) == tag) && (L_status[i].at(index_).valid)){
                                hit_count++;
                                hit = true;
                                
                                break;
                            }
                        }
                        if(hit == false){
                            miss_count++;
        
                            way_idx = LRU(L_status, index_);
                            
                            if((L_status[way_idx].at(index_)).dirty == 1){
                                dirty_miss++; 
                                (L_status[way_idx].at(index_)).dirty = 0; 
                            }else{
                                clean_miss++;
                            }
                            
                            L1_tag[way_idx].at(index_) = tag;
                            L_status[way_idx].at(index_).valid = 1;
                            
                        } 
                    }
                    if(special == true) freg.at(opline.rd) = q;
                    else freg.at(opline.rd) = M.at(rs1+imm).f; 
                    
                    
                    
                    
                    freg.at(opline.rd) = freg.at(opline.rd); 
                        
                    
                    pre_pc = pc; 
                    pc += 4;
                    instr_count++;
                    continue;
                }else if(op_num == 82){ 
                    if(!fast_mode){
                        if(op_load.at(pre_pc/4) == opline.rs1 || op_load.at(pre_pc/4) == opline.rs2){
                            clock_count++;
                        }
                    }
                    rs1 = reg_val.at(opline.rs1);
                    frs2 = freg.at(opline.rs2);
                    if(opline.float_sign) fimm = opline.imm.f;
                    else imm = opline.imm.i;
                    
                    if(fast_mode){
                        
                        M.at(rs1+imm).f = frs2;
                    }else{
                        addr = rs1+imm; 
                        
                        if (addr < 0) addr = ~addr + 1;
                        
                        tag = addr >> (index_dig+offset_dig);
                        index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                        offset = addr & (1<<offset_dig)-1;
                        
                            
                        
                        
                        flag = 0;
                        for(int w=0; w < way_num; w++){ 
                            
                            
                            if((L1_tag.at(w).at(index_) == tag) && (L_status.at(w).at(index_).valid)){ 
                                uint64_t data_num = uint64_t(offset);
                                M[rs1+imm].f  = frs2; 
                                L_status.at(w).at(index_).valid = 1;
                                
                                L_status.at(w).at(index_).dirty = 1;
                                if(L_status.at(w).at(index_).acc < 8) L_status.at(w).at(index_).acc += 1;
                                
                                flag = 1;
                                hit_count++;
                                
                                break;
                            }
                            
                            
                        }
                        if(flag == 0){
                            
                            miss_count++;
                            
                            way_idx = LRU(L_status, index_);
                            
                            
                            flag = 1;
                            
                            int w = way_idx;
                            M[rs1+imm].f = frs2; 
                            (L_status[way_idx].at(index_)).valid = 1; 
                            L_status[way_idx].at(index_).dirty = 1;
                            if(L_status.at(w).at(index_).acc < 8) L_status[way_idx].at(index_).acc += 1;  
                            L1_tag.at(w).at(index_) = tag;
                            flag = 1;
                            
                        }
                    }
                    if(debug) cout << "   #fsw " << M.at(rs1+imm).f << " "<< rs1 <<" " << imm << endl;
                    pre_pc = pc; pc += 4;
                    instr_count++;
                    continue;
                }else if(op_num == 1){ 
                    freg.at(opline.rd) = opline.imm.f; 
                    if(debug) cout << "   #fmv " << freg.at(opline.rd) << " "<< opline.imm.f<< endl;
                    pre_pc = pc; pc += 4;
                    instr_count++;
                    continue;
                }
                
                    
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) ==  opline.rs1|| op_load.at(pre_pc/4) == opline.rs2 || op_load.at(pre_pc/4) == opline.rs3){
                        clock_count++;
                    }
                }
                
                
                
                
                
                frs1 = freg.at(opline.rs1);
                frs2 = freg.at(opline.rs2);
                frs3 = freg.at(opline.rs3);
                Bit32 y, b_rs1, brd;
                if(op_num == 83){ 
                    freg.at(opline.rd)=frs1*frs2+frs3;
                }else if(op_num == 84){ 
                    freg.at(opline.rd)=frs1*frs2-frs3;
                }else if(op_num == 85){ 
                    freg.at(opline.rd)=-frs1*frs2+frs3;
                }else if(op_num == 86){ 
                    freg.at(opline.rd)=-frs1*frs2-frs3;
                }else if(op_num == 87){ 
                    
                    brd = fadd(f_to_bit(frs1), f_to_bit(frs2));
                    freg.at(opline.rd) = bit_to_float(brd);
                    
                    
                    clock_count += 4; 
                }else if(op_num == 88){ 
                    
                    brd = fsub(f_to_bit(frs1), f_to_bit(frs2)); 
                    freg.at(opline.rd) = bit_to_float(brd);
                    
                    
                    
                    clock_count += 4; 
                }else if(op_num == 89){ 
                    
                    brd = fmul(f_to_bit(frs1), f_to_bit(frs2));
                    freg.at(opline.rd) = bit_to_float(brd);
                    
                    
                    clock_count += 4; 
                }else if(op_num == 90){ 
                    
                    brd = fdiv(f_to_bit(frs1), f_to_bit(frs2));
                    freg.at(opline.rd) = bit_to_float(brd);
                    
                    
                    clock_count += 4; 
                }else if(op_num == 91){ 
                    
                    brd = fsqrt(f_to_bit(frs1));
                    freg.at(opline.rd) = bit_to_float(brd);
                    
                    
                    clock_count += 4; 
                }else if(op_num == 92){ 
                    freg.at(opline.rd) = abs(frs1) * sign(frs2);
                }else if(op_num == 93){ 
                    freg.at(opline.rd) = abs(frs1) * -sign(frs2);
                
                
                }else if(op_num == 94){ 
                    brd = fabs(f_to_bit(frs1));
                    freg.at(opline.rd) = bit_to_float(brd);
                    clock_count += 4; 
                    
                }else if(op_num == 95){ 
                    freg.at(opline.rd) = min(frs1, frs2);
                }else if(op_num == 96){ 
                    freg.at(opline.rd) = max(frs1, frs2);
                }else if(op_num == 97){ 
                    freg.at(opline.rd) = (float) frs1;
                    clock_count += 1;
                }else if(op_num == 98){ 
                    freg.at(opline.rd) = (float) frs1;
                }else if(op_num == 99){ 
                    freg.at(opline.rd) = (int32_t) frs1;
                    clock_count += 1;
                }else if(op_num == 0){ 
                    freg.at(opline.rd) = (uint32_t) frs1;
                
                
                }else if(op_num == 2){ 
                    freg.at(opline.rd) = *((float*) &frs1);
                }else if(op_num == 3){ 
                    
                    reg_val.at(opline.rd) = feq(f_to_bit(frs1), f_to_bit(frs2));
                    clock_count += 4; 
                }else if(op_num == 4){ 
                    reg_val.at(opline.rd) = (frs1 < frs2) ? 1 : 0;
                    clock_count += 4; 
                }else if(op_num == 5){ 
                    
                    reg_val.at(opline.rd) = fle(f_to_bit(frs1), f_to_bit(frs2));
                    
                    clock_count += 4;
                }
                
                
                
                
                else if(op_num == 6){ 
                    
                    
                    
                    b_rs1 = f_to_bit(frs1);
                    int64_t z = ftoi(b_rs1);
                    
                    
                    reg_val.at(opline.rd) = z; 
                    clock_count += 4; 
                    
                    
                    
                    
                    
                    
                    
                    
                }else if(op_num == 7){ 
                    
                    
                    
                    
                    
                    
                    
                    b_rs1 = reg_val.at(opline.rs1); 
                    y = itof(b_rs1);
                    freg.at(opline.rd) = bit_to_float(y);  
                    clock_count += 4; 
                    
                    
                }
                
                
                
                
                pre_pc = pc; 
                pc += 4;
                
                
                
                
                
                instr_count++; 
                continue;
            default:
                continue;
            
        }
        reg_val.at(0) = 0;   
        
        
        
    } 
    
    for(int i = 0; i <= 32; i++){
        
        if(freg.at(i)){
            cout << "f" << i << " " << freg.at(i) << endl;
        }
        if(reg_val[i]){
            cout << 'x' << i << " " << reg_val.at(i) << endl;
        }
        
    }
    cout << "アクセス合計" << " " << hit_count+miss_count << endl;
    cout << "hit miss " << hit_count << " " << miss_count << endl;
    if(!fast_mode) cout << setprecision(10) << hit_count/(hit_count+miss_count) << endl;
    cout << "clean dirty " << clean_miss << " " << dirty_miss << endl;
    cout << "実行命令数 " << instr_count << endl;
    clock_count = instr_count + clock_count + hit_count*2 + clean_miss*6+dirty_miss*7;
    if(!fast_mode) cout << "クロック数" << clock_count << endl;
    clock_t end = clock();     
    std::cout << "duration = " << (double)(end - start) / CLOCKS_PER_SEC << "sec.\n";
    
    
    puts("実行時間予測");
    
    cout << clock_count / (50 * pow(10,6)) << "sec" << endl;
    return 0;
}
        
        
