#!/usr/bin/ruby

p `dd`.scan(/\d+/).each_slice(4).sum{|e| a,b,c,d = *(e.map &:to_i); (c<=b && b<=d) || (c<=a && a<=d) ? 1 : 0}
