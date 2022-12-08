#!/usr/bin/ruby
a=14
`dd`.chars.each_cons(14){|x|break if x.uniq.size==14; a+=1}
p a
