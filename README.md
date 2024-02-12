# ACSE_compiler
ACSE (Advanced Compiler System for Education) is a simple compiler developed for educational purpose as a tool for the “Formal Languages and Compilers” course at Politecnico di Milano.
ACSE is able to translate a source code written in LanCE 1.3 (Language for Compilers Education) into an assembly for the MACE architecture.


To install the ACSE compiler type in the console: make

To compile some examples (located in the directory ./tests) type: make tests

In order to use the compiler/assembler/executor at first you have to export the directory 

./bin in your current PATH as follows:

export PATH=`pwd`/bin:$PATH

You can compile and run new Lance programs in this way (suppose you have saved a Lance program in 'myprog.src'):

acse myprog.src myprog.asm

asm myprog.asm myprog.o

mace myprog.o
