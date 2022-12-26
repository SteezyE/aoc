#!/usr/bin/ruby
pts=[0i]*10
dx=[0,1,0,-1,1,-1,-1,1]
dy=[1,0,-1,0,1,-1,1,-1]
dirs="DRULdrul".chars.zip((0..7).map{|i|Complex(dx[i], dy[i])}).to_h
s=[]
$<.map(&:split).each{|(dir,val)| 
	val.to_i.times{
		pts[0] += dirs[dir]
		(0..9).each_cons(2){|a,b|
			if (pts[a]-pts[b]).abs >= 2.0 then	
				pts[b] += dirs.values.min_by{|x| (pts[a]-pts[b]-x).abs}
			end
		}
		s += [pts[-1]]
	}	
}
p s.uniq.size
