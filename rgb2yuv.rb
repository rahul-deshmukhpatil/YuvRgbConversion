#!/bin/bash/env ruby

R=ARGV[0].to_f;
G=ARGV[1].to_f;
B=ARGV[2].to_f;
pixel=[];
#main conversion with multiplying  coeficients

Y  =      (0.257 * R) + (0.504 * G) + (0.098 * B) + 16

Cr = V =  (0.439 * R) - (0.368 * G) - (0.071 * B) + 128

Cb = U = -(0.148 * R) - (0.291 * G) + (0.439 * B) + 128



#if (Y > 255) 
#	Y = 255;
#end
#
#if (U > 255)
#	U = 255;
#end
#
#if (V > 255) 
#	V = 255;
#end
#
#if (Y < 0) 
#	Y = 0;
#end
#
#if (U < 0) 
#	U = 0;
#end
#
#if (V < 0) 
#	V = 0;
#end

#pixel[0] = Y * 220 / 256;
#pixel[1] = U * 220 / 256;
#pixel[2] = V * 220 / 256;
puts "yuv[#{Y}: #{U}: #{V}]    rgb:[#{R}: #{G}: #{B}]";
