class TicTacToe
def initialize
  arr = Array.new(3) {Array.new(3) }
  puts "Enter the first player name"
  @user1 = gets.chomp
  puts "Enter the second player name"
  @user2 = get.chomp
  puts "Game begins!!"
  start
end

def start(user = @user1)
  table_show
  if @user == @user1
    puts "#{@user1} turn"
  else
    puts "#{@user2} turn"
  end
  x = gets.chomp
  y = gets.chomp
  move(@user, x, y)
end

def move(@user, x, y)
 if x.valid? && y.valid?
    arr[x][y] = 0 if @user == @user1
    arr[x][y] = "x" if @user = @user2
    change@user)
    start(@user)
  else 
    puts "invalid input"
  end
end
 


def table_show
  arr.each_with_index do |x, i, j|
    
    puts "|#{x}|"
end

def valid
  if (x >= 0 and x <3) and (y >= 0 and y < 3 )
     if a[x][y].nil?
       true
     end
  else
    false
  end
end

def change(@user)
  @user = @user2 if @user == @user1
  @user = @user1 if @user == @user2
end

end