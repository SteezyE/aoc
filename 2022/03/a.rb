#!/usr/bin/ruby

f=->(c){c > ?Z ? c.ord-96 : c.ord - 38}
p `dd`.split.sum{|s|f[(s[...s.size>>1].chars & s[s.size>>1..].chars & s[s.size>>1..].chars)[0]]}
