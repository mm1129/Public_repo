#include "fpu_common.hpp"
#include "simu_fadd.hpp"
#define Bit32 unsigned int
#define Bit64 unsigned long long
    
int64_t ftoi(Bit32 x){
    Bit32 s,e;
    Bit64 m;
    s = at_uint(x, 31);
    e = sub_uint(x, 30,23);
    m = (1ULL << 32) | (sub_uint(x,22,0) << 9);
    
    Bit32 valid;
    int shamt, adjusted;
    int64_t y;  
    Bit64 shifted;
    shamt = 127 + 31 - e;
    
    if(shamt > 0){
        if(shamt > 33) {shifted = 0;}
        else shifted = m >> shamt; 
    }else{
        shifted = m;
    }
    
    
    adjusted = (sub_uint(shifted,0,0) == 0)? sub_uint(shifted,32,1) :(sub_uint(shifted,32,1))+1;
    y = (e == 0)? 0 : ((s == 0)? adjusted : -adjusted);
    
    
    return y;
}
