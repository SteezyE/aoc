#!/usr/bin/ruby
path="/"
hash={}
$<.map{|s| s.split}.each{ |s|
	if s[1] == "cd"
		if s[2] == "/"
			path = "/"
		elsif s[2] == ".."			
			path = path == "/" ? "/" : path[/(.*\/)\w+\//, 1] 
		else
			path += s[2] + "/"
		end
	elsif s[0] =~ /\d+/
		hash[path] = (hash[path] || 0) + s[0].to_i
	end
}
hash.keys.sort_by{|x|x.scan("/").count}.each{|x| 
	t = x
	while t!="/"
		t = t[/(.*\/)\w+\//, 1]
		hash[t] = (hash[t] || 0) + hash[x] 
	end
}
hash.values.sort.each{|x| (p x; break) if 70000000 - hash["/"] >= 30000000 - x}
