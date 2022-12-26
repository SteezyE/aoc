#!/usr/bin/ruby
p1,p2=0i,0i
dx=[0,1,0,-1,1,-1,-1,1]
dy=[1,0,-1,0,1,-1,1,-1]
dirs="DRULdrul".chars.zip((0..7).map{|i|Complex(dx[i], dy[i])}).to_h
s=[]
$<.map(&:split).each{|(dir,val)| 
	val.to_i.times{
		p1 += dirs[dir]
		if (p1-p2).abs >= 2.0 then
			p2 += dirs.values.min_by{|x| (p1-p2-x).abs} 
		end
		s += [p2]
	}	
}
p s.uniq.size
