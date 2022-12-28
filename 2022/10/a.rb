#!/usr/bin/ruby
reg,cycle=1,0
a=[20,60,100,140,180,220]
res=[]
f=->(x){cycle+=1; res << reg*cycle if a.include? cycle; reg+=x.to_i if x!=?n}
`dd`.split(?\n).each{|ins|
	if ins[0] == ?n
		f[?n]
	else
		f[?n]
		f[ins.split[1]]
	end
}
p res.sum
