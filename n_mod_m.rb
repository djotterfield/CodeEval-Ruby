# n_mod_m.rb
# Challenge Description:

# Given two integers N and M, calculate N Mod M (without using any inbuilt modulus operator).
# Input sample:

# Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.

# 20,6
# 2,3

# You may assume M will never be zero.
# Output sample:

# Print out the value of N Mod M 

File.open(ARGV[0]).each_line do |line|

  n, m = line.strip.split(",").map { |i| i.to_i  }
  def mod(n, m)
    return n - (m * (n/m))
  end
  
  puts mod(n, m)
end