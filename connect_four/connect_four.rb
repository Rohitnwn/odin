  class ConnectFour

   attr_accessor :player1, :player2

   def initialize player1 = "player1", player2 = "player2"
     @player1  = player1
     @player2  = player2
     @array = Array.new(7){Array.new(7)}
     puts "Welcome to connect four #{@player1} and #{@player2}"
     puts "Lets start!!"
     display_board(9, 9, "rohit")
     start
   end

   def start current_player = @player1
    @current_player = current_player
    puts "#{@current_player} player's turn"
    get_input
    display_board
   end

  def display_board(x, y, sym)
   i, j= 0, 0
   for i in 0..7
    for j in 0..7
      print "\u250F"
      print sym if i == x and j == y
      print " \u2513"
    end
    print "\n"
    for j in 0..7
      print "\u2517 "
      print " " if i == x and j == y
      print "\u251B"
    end
    print "\n"
   end
  end

  def get_input
    @x = gets.to_i
    @y = gets.to_i
    if @array[@x, @y].empty?
      if @current_player == @player1
        @symbol = "\u25C9"
        place_input
      else
        @symbol = "\u25CE"
        place_input
      end
      start change_player
    else
      puts "already occupied"
    end
  end

  def place_input
    if !@array[@x+1, @y].empty?
      display_board(@x, @y, @symbol)
      check_gameover
    else
      puts "Wrong entery Cannot place there retry"
      get_input
    end
  end


  def change_player
    if @current_player = player1
      player2
    else
      player1
    end
  end


  def check_gameover
    if @array.none { |x| x.nil? }
      "Game Over No One Wins"
    else
      @array.each do |x|
        if x == "\u25C9"
          score1 +=1
          score2 = 0
        elsif x == "\u25CE"
          score2 +=1
          score1 = 0
        else
          score1 = 0
          score2 = 0
        end




  end


end

