# multiples_of_a_number.rb 

# Challenge Description:

# Given numbers x and n, where n is a power of 2, print out the smallest multiple of n which is greater than or equal to x. Do not use division or modulo operator.
# Input sample:

# The first argument will be a path to a filename containing a comma separated list of two integers, one list per line. E.g.

# 13,8
# 17,16

# Output sample:

# Print to stdout, the smallest multiple of n which is greater than or equal to x, one per line. E.g.

# 16
# 32

File.open(ARGV[0]).each_line do |line|
    x, n = line.split(",")
    n = n.to_i
    x = x.to_i
    i = n.to_i

    while n < x 
      n += i
    end
    print n
    print "\n" if line = gets
end
