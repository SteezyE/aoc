#!/usr/bin/ruby
reg,cycle=1,0
a=[40,80,120,160,200,240]
f=->(x){
	$><< ((reg-1 <= cycle%40 and cycle%40 <= reg+1) ? ?# : ?.)
	cycle+=1 
	reg+=x.to_i if x!=?n
	$><<?\n if a.include? cycle
}
`dd`.split(?\n).each{|ins|
	if ins[0] == ?n
		f[?n]
	else
		f[?n]
		f[ins.split[1]]
	end
}
