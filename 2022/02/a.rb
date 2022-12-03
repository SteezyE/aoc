#!/usr/bin/ruby

f=->(x){x>?W ? x.ord-?X.ord : x.ord-?A.ord}
p `dd`.split.each_slice(2).to_a.sum{|a| -~f[a[1]] + ((f[a[1]]+2)%3==f[a[0]] ? 6 : (f[a[0]]==f[a[1]] ? 3 : 0))}
