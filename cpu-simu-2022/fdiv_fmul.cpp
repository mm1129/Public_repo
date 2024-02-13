
#include "fpu_common.hpp"
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long

Bit32 fmul(Bit32 x1, Bit32 x2){ //float x_2){
    
    Bit32 mh1_bef, mh2_bef;
    Bit32 ml1,e1,s1;
    mh1_bef = sub_uint(x1, 22, 11);
    ml1 = sub_uint(x1,10,0);
    e1 = sub_uint(x1,30,23);
    s1 = at_uint(x1,31);
    Bit32 ml2,e2,s2;
    mh2_bef = sub_uint(x2,22,11);
    ml2 = sub_uint(x2,10,0);
    e2 = sub_uint(x2,30,23);
    s2 = at_uint(x2,31);
    Bit32 mh1_ext, mh2_ext;
    mh1_ext = ( (e1 == 0) ? mh1_bef  : (0b1 << 12 | mh1_bef));
    mh2_ext = ( (e2 == 0) ? mh2_bef  : (0b1 << 12 | mh2_bef));
    // 1
    Bit32 hh,hl,lh;
    hh = mh1_ext * mh2_ext;
    hl = mh1_ext * ml2;
    lh = ml1 * mh2_ext;
    // 指数部
    Bit32 ans_e_pre;
    ans_e_pre = e1 + e2 + 129;
    // 符号部
    Bit32 ans_s;
    ans_s = s1 ^ s2;
    // 2
    Bit32 ans_m_long, ans_e_pre_plus_one;
    Bit32 eplus, unf,ovf;
    ans_m_long = hh + (hl >> 11) + (lh >> 11) + 2;
    ans_e_pre_plus_one = ans_e_pre + 1;
    eplus = (at_uint(ans_m_long,25) == 1) ? 1 : 0;
    unf = (sub_uint(ans_e_pre,8,7) == 0b01) ? 0b1 : 0b0;
    ovf = (sub_uint(ans_e_pre,8,7) == 0b00) ? 0b1 : 0b0;
    // 3.
    Bit32 ans_m, ans_e, y;
    ans_m = (at_uint(ans_m_long,25) == 0b1) ? sub_uint(ans_m_long,24,2) : sub_uint(ans_m_long,23,1);
    ans_e = (unf == 0b1) ? 0 : ( (ovf == 1) ? 255 : ((eplus == 1) ? sub_uint(ans_e_pre_plus_one,7,0) : sub_uint(ans_e_pre,7,0)));
    y = (x1 == 0 || x2 == 0) ? 0 : (ans_s<<31 | ans_e<<23 | ans_m);
   
    
    return y;
}

Bit32 fdiv(Bit32 x1, Bit32 x2){
   Bit32 ena, wea, dina;
    ena = 1; wea = 0; dina = 0;
    
    Bit32 bram_addr = sub_uint(x2,22,13);
    
    Bit64 data_from_a = array0[bram_addr]; 
    
    Bit32 addr_a;
    
    addr_a = bram_addr;
    Bit32 gradient, delta_x, y_intersect; //すべてok
    gradient = (sub_uint(data_from_a, 35,35) == 0) ? ((1<<24) | (sub_uint(data_from_a,34,23) << 12)) : ((1<<23) | (sub_uint(data_from_a,34,23)<<11) );
    delta_x = ((1<<23) | sub_uint(x2,22,0));
    y_intersect = ((1<<23) | sub_uint(data_from_a,22,0)); //ok

    Bit64 delta_y_l, delta_y_h; //ok
    delta_y_l = ((Bit64)sub_uint(gradient,17,11)*delta_x) << 11ULL;
    delta_y_h = ((Bit64)sub_uint(gradient,24,18)*delta_x) << 18ULL;

    Bit64 delta_y,finv_ans;
    delta_y = delta_y_h + delta_y_l; //ok
    finv_ans = (Bit64)((Bit64)y_intersect << 25ULL) - (Bit64)(((sub_uint(delta_y,48,25)<<25ULL | sub_uint(delta_y,24,0))));
    
    Bit32 finv_float_s, finv_float_e, finv_float_m;
    finv_float_s = at_uint(x2,31);
    finv_float_e = (sub_uint(x2,22,0) == 0) ? 253 - sub_uint(x2,30,23) : 253 - sub_uint(x2,30,23);
    finv_float_m = (at_uint(finv_ans,48) == 1)? 1:
    (at_uint(finv_ans,47) == 1) ? sub_uint(finv_ans,46,24):0;
    Bit32 finv_float, y;
    finv_float = ((finv_float_s << 31) | (finv_float_e << 23) | finv_float_m);
    
    y = fmul(x1, finv_float);
    
    return y; //ok
}
