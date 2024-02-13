#include "fpu_common.hpp"
    
   
Bit32 fsqrt(Bit32 x){
    
    
    Bit32 ena, wea, dina;
    ena = 1; wea = 0; dina = 0;
    
    Bit32 addra = (sub_uint(x,23,23) == 0) ? ((1<<9)| sub_uint(x,22,14)) : (sub_uint(x,22,14));
    
    
    Bit64 data_from_coe = array1[addra]; 
    
    Bit32 gradient, delta_x, y_intersect;
    gradient = ((0b1<<23) | (sub_uint(data_from_coe,35,23) <<10));
    delta_x   = (sub_uint(x,23,23) == 0) ? ((0b1<<24)| sub_uint(x,22,0)<<1) : ((0b01<<23)| sub_uint(x,22,0));
    y_intersect = ((0b1<<23) | sub_uint(data_from_coe,22,0));
    
    float f_g, f_d;
    f_g = pow(2,-25) * (1 + gradient * pow(2, -23));
    
    Bit64 delta_y = ((Bit64)gradient * delta_x)  % (1ll << 49);
    
    Bit32 fsqrt_ans, fsqrt_float;
    fsqrt_ans = y_intersect + sub_uint(delta_y, 48,24); 
    fsqrt_float = (sub_uint(fsqrt_ans,25,25) == 0b1) ? (0b01111111<<23 | (1<<23)-1) :
    (at_uint(fsqrt_ans,24) == 0b1) ? (0b01111111<<23 | sub_uint(fsqrt_ans,23,1)) :
    (0b01111111<<23) ;
    
    Bit32 return_e, return_m;
    
    return_e = (sub_uint(x,23,23) == 0) ? (sub_uint(x,30,23)>>1) - 64 + 127/*fsqrt_float[30:23]*/ :  ((sub_uint(x,30,23)+1)>>1) - 64 + 127/*fsqrt_float[30:23]*/;  
    return_m = sub_uint(fsqrt_float,22,0);
    Bit32 y;
    y = (sub_uint(x,31,31) == 1) ? (0b01111111111111111111111111111111) :
    ((return_e << 23) | return_m);
    return y;
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
