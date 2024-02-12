      .data
_arr: .SPACE 5
      .text
      ADDI R1 R0 #16       /* line 1 */
      ADDI R2 R0 #0        /* line 2 */
      MOVA R3 _arr         /* line 4 */
      ADDI R4 R0 #0
      ADD (R3) R0 R4
      MOVA R3 _arr         /* line 5 */
      ADDI R3 R3 #1
      ADDI R4 R0 #1
      ADD (R3) R0 R4
      MOVA R3 _arr         /* line 6 */
      ADDI R3 R3 #2
      ADDI R4 R0 #2
      ADD (R3) R0 R4
      MOVA R3 _arr         /* line 7 */
      ADDI R3 R3 #3
      ADDI R4 R0 #3
      ADD (R3) R0 R4
      MOVA R3 _arr         /* line 8 */
      ADDI R3 R3 #4
      ADDI R4 R0 #4
      ADD (R3) R0 R4
      ADDI R3 R0 #0        /* line 11 */
      ADDI R4 R0 #0
      ADDI R5 R0 #0
      ADDI R6 R0 #0
      ADD R6 R0 R1
L1:   SUBI R0 R4 #0
      BNE L2
      ANDBI R3 R6 #1
      ADD R4 R4 R3
      SHRI R6 R6 #1
      ADDI R5 R5 #1
      BT L1
L2:   SUBI R5 R5 #1
      MOVA R4 _arr
      ADD R4 R4 R5
      ADD R5 R0 (R4)
      ADD R2 R0 R5
      WRITE R2 0           /* line 12 */
      ADDI R1 R0 #2        /* line 16 */
      ADDI R5 R0 #0        /* line 17 */
      ADDI R4 R0 #0
      ADDI R6 R0 #0
      ADDI R3 R0 #0
      ADD R3 R0 R1
L3:   SUBI R0 R4 #0
      BNE L4
      ANDBI R5 R3 #1
      ADD R4 R4 R5
      SHRI R3 R3 #1
      ADDI R6 R6 #1
      BT L3
L4:   SUBI R6 R6 #1
      MOVA R4 _arr
      ADD R4 R4 R6
      ADD R6 R0 (R4)
      ADD R2 R0 R6
      WRITE R2 0           /* line 18 */
      ADDI R1 R0 #84       /* line 21 */
      ADDI R6 R0 #0        /* line 22 */
      ADDI R4 R0 #0
      ADDI R3 R0 #0
      ADDI R5 R0 #0
      ADD R5 R0 R1
L5:   SUBI R0 R4 #0
      BNE L6
      ANDBI R6 R5 #1
      ADD R4 R4 R6
      SHRI R5 R5 #1
      ADDI R3 R3 #1
      BT L5
L6:   SUBI R3 R3 #1
      MOVA R4 _arr
      ADD R4 R4 R3
      ADD R3 R0 (R4)
      ADD R2 R0 R3
      WRITE R2 0           /* line 23 */
      HALT                 /* line 26 */
