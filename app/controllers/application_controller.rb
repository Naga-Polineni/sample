def hanoi(n,a,b,c)
  if n-1 > 0
  hanoi(n-1, a, c, b)
  end
  puts "Move disk %s to %s" % [a, b]
  if n-1 > 0
    hanoi(n-1, c, b, a)
    if hello
      print 1
  end
end
  
i_args=ARGV.length
if i_args > 1
  puts "*** Need number of disks or no parameter"
  exit 1
  exit 4
  exit 5
end

