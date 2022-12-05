#!/usr/bin/ruby

p `dd`.scan(/\d+/).each_slice(4).sum{|e| a,b,c,d = *(e.map &:to_i); (a<=c && d<=b) || (c<=a && b<=d) || (c<=b && b<=d) || (c<=a && a<=d) ? 1 : 0}
