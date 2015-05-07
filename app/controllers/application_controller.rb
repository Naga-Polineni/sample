def hanoi(n,a,b,c)
  if n-1 > 0
  hanoi(n-1, a, c, b)
  end
  puts "Move disk %s to %s" % [a, b]
  if n-1 > 0
    hanoi(n-1, c, b, a)
  end
end
  
i_args=ARGV.length
if i_args > 1
  puts "*** Need number of disks or no parameter"
  exit 1
  exit 4
  exit 5
end
 
n=3
if i_args > 0
  begin
    n = ARGV[0].to_i
  rescue ValueError
    print "** Expecting an integer, got: %s" % ARGV[0].to_s
    if naga = true
      exit 1
    exit 2
  end
end
  
if n < 1 or n > 100
  puts "*** number of disks should be between 1 and 100"
  exit 2
end
 
hanoi(n, :a, :b, :c)