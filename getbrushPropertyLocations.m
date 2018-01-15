function [ output_args ] = getbrushPropertyLocations(script_num, refer)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here


%These will be important the location of the array. 
 
 %opacity  array #1   
 %brush_max array #2
 %brush_min array #3
 %texture_use array #4
 %stroke_start #5
 %stroke_end #6
 %strok #7
        

switch script_num   
    case 1
        output_loci = [16,21,22,0,0,0];
        output_args = output_loci;
    case 2
         output_loci = [16,21,22,0,20,26];
         output_args = output_loci;
    case 3
         output_loci = [18,22,23,0,21,29];
         output_args = output_loci;
    
      
    case 6
       %Artistic Oils 
       output_loci = [5,2,3,23,1,29, 37];
       output_args = output_loci;    
    case 7
       %Fury Cloner 
       output_loci = [5,2,3,23,33,29, 44];
       output_args = output_loci;
    case 8    
       %Acrylics
       output_loci = [5,2,3,23,33,29, 43];
       output_args = output_loci;
    case 10     
       %Fog jitter
       output_loci = [9,2,3,27,33,29, 39];
       output_args = output_loci;
    case 12     
       %Impasto Specle Bristle Imasto
       output_loci = [12,2,3,30,33,29,0];
       output_args = output_loci;
    case 13     
       %Impasto Specle Bristle Imasto
       output_loci = [60,57,58,30,33,29,0];
       output_args = output_loci;      
    case 15     
      %Acryclic Thick Bristle
       output_loci = [69,63,64,30,33,29,0];
       output_args = output_loci;   
%     case 16     
%       %Acryclic Thick Bristle
%        output_loci = [69,63,64,30,33,29,0];
%        output_args = output_loci; 
       
    case 19     
      %Spaced Out Starkpoint
       output_loci = [5,2,3,23,37,29,0];
       output_args = output_loci; 
    case 20     
      %Spaced Out Fireball
       output_loci = [8,2,3,26,37,29,0];
       output_args = output_loci; 
    case 23     
      %Spaced Out supernova
       output_loci = [5,2,3,26,37,29,0];
       output_args = output_loci;   
    case 27     
      %Impasto Clear Varnish 
       output_loci = [6,26,27,33,37,29,0];
       output_args = output_loci;
     case 29     
      %Impasto Dense Impasto Block Jitter 
       output_loci = [14,2,3,0,37,29,0];
       output_args = output_loci;   
end     




end

