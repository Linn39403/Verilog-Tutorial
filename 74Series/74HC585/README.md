#  Single Digit 7 Segement Decoder ( case method )

## Truth Table
Input | OutPut
------|-------
En dec a  | z 
0 x xxxx | zzzzzzzz
1 1 0000 | 01000000
1 1 0001 | 01111001
1 1 0010 | 00100100
1 1 0011 | 00110000
1 1 0100 | 00011001
1 1 0101 | 00010100
1 1 0110 | 00000100
1 1 0111 | 01111000
1 1 1000 | 00000000
1 1 1001 | 00010000
1 1 1010 | 00001000
1 1 1011 | 00000011
1 1 1100 | 01000110
1 1 1101 | 00100001
1 1 1110 | 00000110
1 1 1111 | 00001110
## Test Bench Waveform and Result ![image](images/test_bench.png)
