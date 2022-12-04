#!/usr/bin/ruby

f=->(c){c > ?Z ? c.ord-96 : c.ord - 38}
p `dd`.split.each_slice(3).to_a.sum{ |s|
 a, b, c = *s
 d = a.chars & b.chars & c.chars
 f[d[0]]
}
