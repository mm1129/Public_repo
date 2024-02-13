#include "fpu_common.hpp"
    
Bit32 itof(Bit32 x){
    
    Bit32 s, x_abs;
    s = at_uint(x,31);
    x_abs = (s == 0)? sub_uint(x,31,0): -sub_uint(x,31,0);
    
    
    Bit32 shamt;
    shamt = 0;
    for(int i = 31; i >= 0; i--){
        if(at_uint(x_abs, i) == 1){
            shamt = 32-i;
            break;
        }   
    }
    
    
    Bit64 shifted;
    Bit32 ans_m, e_plus, ans_e, y;
    shifted = ((Bit64)x_abs) << shamt;
    
    
    ans_m = (sub_uint(shifted,8,8) == 0) ? sub_uint(shifted,31,9) : sub_uint(shifted,31,9)+1;
    
    e_plus = 1;
    for(int i = 31; i >= 8 ; i++){
        if(at_uint(shifted, i) == 0){
            e_plus = 0; break;
        }
    }
    
    
    ans_e = 127 + 32 - shamt + e_plus;
    y = (shamt == 0)? 0 : (s << 31 | ans_e << 23 | ans_m);
    return y;
}
Bit32 fabs(Bit32 x) {
    Bit32 y;
    y = sub_uint(x,30,0);
    return y;
}
Bit32 feq(Bit32 x1, Bit32 x2){
    Bit32 y;
    y = (x1 == x2)? 1 : 0;
    return y;
}
Bit32 fle(Bit32 x1, Bit32 x2){
    Bit32 s1,s2, e1, e2, m1, m2;
    s1 = sub_uint(x1,31,31);
    s2 = sub_uint(x2,31,31);
    e1 = sub_uint(x1,30,23);
    e2 = sub_uint(x2,30,23);
    m1 = sub_uint(x1,22,0);
    m2 = sub_uint(x2,22,0);
    Bit32 compare_e1_e2, compare_e2_e1, equal_e;
    compare_e1_e2 = (e1 >= e2)? 1 : 0;
    compare_e2_e1 = (e2 >= e1)? 1 : 0; 
    equal_e = (e1 == e2)? 1 : 0;
    Bit32 compare_m1_m2, compare_m2_m1;
    compare_m1_m2 = (m1 >= m2) ? 1 : 0;
    compare_m2_m1 = (m2 >= m1)? 1 : 0;
    
    
    Bit32 y_check, y;
    y_check = (((s1<< 1) | s2)== 0)? ((equal_e)? compare_m2_m1 : compare_e2_e1) :
              (((s1<< 1) | s2) == 1)? 0 :
              (((s1<< 1) | s2) == 0b10)? 1 :
              ((equal_e)? compare_m1_m2 : compare_e1_e2);
    y = y_check ? 1 : 0;
    return y;
}
