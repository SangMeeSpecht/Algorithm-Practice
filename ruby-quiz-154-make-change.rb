# Ruby Quiz 154: Make Change (http://rubyquiz.com/quiz154.html)
# Create a function that when given a certain change amount, will return the optimal change (i.e. the least amount of coins involved)
# Assume that you have an infinite number of coins to work with
# Using USA currency (.25, .10, .05, .01)

# def make_change(amount)
#   change = []
#   until amount == 0
#     if amount - 25 >= 0
#       change << 25
#       amount -= 25
#     elsif amount - 10 >= 0
#       change << 10
#       amount -= 10
#     elsif amount - 5 >= 0
#       change << 5
#       amount -= 5
#     elsif amount - 1 >= 0
#       change << 1
#       amount -= 1
#     end
#   end
#   p change 
# end


# dynamic to allow for any denomination of coins
def make_change(amount, coins = [25, 10, 5, 1])
  change = []

  coins.sort.reverse.each do |coin|
    while amount - coin >= 0
      change << coin
      amount -= coin 
    end
  end
  
  p change
end

make_change(99)



