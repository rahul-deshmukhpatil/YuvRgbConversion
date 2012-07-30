#!/bin/bash/env ruby

y=ARGV[0].to_f;
u=ARGV[1].to_f;
v=ARGV[2].to_f;
pixel=[];
#main conversion with multiplying  coeficients
r = y + (1.370705 * (v-128));
g = y - (0.698001 * (v-128)) - (0.337633 * (u-128));
b = y + (1.732446 * (u-128));

if (r > 255) 
	r = 255;
end

if (g > 255)
	g = 255;
end

if (b > 255) 
	b = 255;
end

if (r < 0) 
	r = 0;
end

if (g < 0) 
	g = 0;
end

if (b < 0) 
	b = 0;
end

pixel[0] = r * 220 / 256;
pixel[1] = g * 220 / 256;
pixel[2] = b * 220 / 256;
puts "yuv[#{y}: #{u}: #{v}]    rgb:[#{r}: #{g}: #{b}]";
