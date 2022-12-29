#!/usr/bin/ruby
v=`dd`.split("\n\n").map{|s| s.split ?\n}.map{|(a,b,c,d,e,f)|
	[b.scan(/\d+/).map(&:to_i), 
	 c[/= (.*)/,1].gsub("old","%1$d"), 
	 "%d.divmod("+d[/\d+/]+")[1] == 0", 
	 e[/\d/].to_i, 
	 f[/\d/].to_i,
	 0] 
}
20.times{
	(0...v.size).each{|i|
		v[i][0].map!{|x| (eval v[i][1] % x) / 3}
		v[i][0].each{|x| v[(eval v[i][2] % x) ? v[i][3] : v[i][4]][0] << x}	
		v[i][-1] += v[i][0].size		
		v[i][0] = []
	}
}
p v.map{|(*a,f)|f}.max(2).inject &:*
