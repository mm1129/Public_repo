
CC  = g++

CFLAGS    = -std=c++11 -g -O3

TARGET  = sim

SRCS = sim_with_float.cpp 
SRCS += simu_itof.cpp
SRCS += simu_ftoi.cpp

SRCS += fdiv_fmul.cpp 
SRCS += simu_fadd.cpp 
SRCS += fsub_sim.cpp 
SRCS += fsqrt3.cpp 
SRCS += fpu_common.cpp 


OBJS    = $(SRCS:.cpp=.o)


$(TARGET): $(OBJS) 
	$(CC) -o $@ $^ 


%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

all: clean $(OBJS) $(TARGET)


TARGET2  = fpu


SRCS2 = fdiv_fmul.cpp
SRCS2 += fpu_common.cpp 
OBJS2    = $(SRCS2:.cpp=.o)
$(TARGET2): $(OBJS2) 
	$(CC) -o $@ $^ 
%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

clean:
	-rm -f $(OBJS) $(TARGET) *.d
	-rm -f $(OBJS2) $(TARGET2) *.d











	













