# JPEG-Compression

My Project of the Information Theory and Coding Course Offered in Fall 2022 @ Zewail City.

In this project, I implemented the JPEG Compression Algorithm (Both Encoder and Decoder) using 2 different Quantization Tables (High and Low Tables).


## Implementation Steps:

A) JPEG Encoding 

            1) Reading the image and check that it can be divided to an integer number of 8x8 blocks 
            2) Divide the image into 8x8 Blocks on which DCT is applied 
            3) DCT 8x8 Blocks are divided by a Low Quantization Table 
            4) 8x8 Blocks are converted to 1-D vector (1x64)  
            5) Run Length Code is applied on the 1-D vectors 
            6) Huffman Ecoding is applied on the Run Length Encoded Vectors
            7) Compression Ratio is Calculated  

B) JPEG Decoding 

            1) Huffman Decoding is applied on the recieved vector   
            2) Run Length Decoding is applied on the restored symbols 
            3) Decoded Vector is divided into (1x64) blocks and then each bloch is converted from 1-D to 2-D (8x8) 
            4) Each 8x8 Block is multiplied by the Low Quantization Table 
            5) IDCT is applied on the 8x8 Blocks 
            6) Restoring the Image     
            7) Image Quality and Compression Ratio  


## Original Image <a name="Original Image"></a>
![image](https://user-images.githubusercontent.com/58476343/220165425-38216ee3-159e-415e-bb7a-54ee0d16ce83.png)

## LOW Compressed Image <a name="LOW Compressed Image"></a>
![image](https://user-images.githubusercontent.com/58476343/220165566-35ca4120-41a6-4e77-8b47-deb485812930.png)

## HIGH Compressed Image <a name="HIGH Compressed Image"></a>
![image](https://user-images.githubusercontent.com/58476343/220165684-21a19158-b362-4b56-aff1-676bb720c869.png)
