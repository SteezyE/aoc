#!/usr/bin/ruby

p `dd`.split("\n\n").map{|x|x.split.sum &:to_i}.max
