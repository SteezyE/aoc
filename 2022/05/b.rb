#!/usr/bin/ruby

start, instructions = `dd`.split("\n\n").map{|s| s.split ?\n} 
n = start.size-1
m = start[-1][-2].to_i
stacks = (0...m).map{|j| (0...n).map{|i| start[-2-i][1+4*j] if start[-2-i][1+4*j] != " "}.compact}
ins = instructions.map{|s| s.scan(/\d+/).map &:to_i}
ins.each{|a,b,c| stacks[~-c] += stacks[~-b].pop(a)}
puts stacks.map(&:last) * ""
