#!/usr/bin/ruby
a=4
`dd`.chars.each_cons(4){|x|break if x.uniq.size==4; a+=1}
p a
