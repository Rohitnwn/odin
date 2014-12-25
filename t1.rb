class TicTacGame

  def initialize()
    @board = Array.new(3) { Array.new(3) }
    @ended = false
  end

  def draw_board()
    @board.each_with_index do |row, row_index|
      row.each_with_index do |position, column_index|
        position_num = get_position_num(row_index, column_index)
        if position.nil?
          print "#{position_num}"
        else
          print "#{position.symbol}"
        end
        print row_index < 2 ? "_" : " "
        print "|" unless column_index >= 2
      end
      print "\n"
    end
  end

  def make_move(player, move_pos)
    for i in 0..@board.size-1
      for j in 0..@board[i].size-1
        position_num = get_position_num(i, j)
        if position_num == move_pos
          if @board[i][j].nil?
            @board[i][j] = player	
            return
          else
            puts "position already filled"
          end
        end
      end
    end
    puts "illegal position"
  end

  def check_board()
    #check wins in rows
    for i in 0..@board.size-1
      holder = @board[i][0]
      next if holder.nil?
      mismatched = false
      for j in 1..@board[i].size-1
        if (not holder.nil?) && holder != @board[i][j]
          mismatched = true
          break
        end
      end
      if not mismatched
        end_game(holder)
        return true
      end
    end

    #check wins in columns
    for i in 0..@board[0].size-1
      holder = @board[0][i]
      next if holder.nil?
      mismatched = false
      for j in 1..@board.size-1
        if (not holder.nil?) && holder != @board[j][i]
          mismatched = true
          break
        end
      end
      if not mismatched
        end_game(holder)
        return true
      end
    end

    #check diagonal wins
    if not @board[1][1].nil?
      if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
        end_game(@board[0][0])
        return true
      end
      if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
        end_game(@board[1][2])
        return true
      end
    end
    if not has_free
      end_game(nil)
      return true
    end
    return false
  end

  attr_accessor :ended

  private
  def get_position_num(n, j)
    return (n*@board.size)+j+1
  end

  def end_game(winner)
    puts "end_game called"
    if not winner.nil?
      puts "#{winner.name} as #{winner.symbol} won!"
    else
      puts "Tie!"
    end
    @ended = true
  end

  def has_free()
    has_free = false
    @board.each do |row|
      row.each do |position|
        if position.nil?
          has_free = true
          return has_free
        end
      end
    end
    return has_free
  end

end

class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
  def say_hi()
    puts "Hi! #{name}"
  end
  attr_accessor :name, :symbol
end

puts "Welcome to TicTacToe!"
players = Array.new
puts "Player x name:"
nameX = gets.chomp
pX = Player.new(nameX, "X")
pX.say_hi
players.push(pX)
nameO = gets.chomp
pO = Player.new(nameO, "O")
pO.say_hi
players.push(pO)
game = TicTacGame.new
puts "Game started."
while(!game.ended)
  players.each do |player|
    puts "#{player.name} pick a position:"
    game.draw_board
    pos = gets.chomp.to_i
    game.make_move(player, pos)
    game.draw_board
    game.check_board
    puts game.ended
    break if game.ended
    #break if game.check_board
  end
end
