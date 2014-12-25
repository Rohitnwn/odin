  class Hangman

    def initialize
    	#puts "Enter player name"
    	#@name = gets.chomp
    	puts "Game Begins #{@name}!!"
    	start
    end

    def start
      @word = current_word
      @size = @word.length
      @guess = 7
      @count = 0
      @input = []
      @display = []
      while @guess != 0
        first_time
        puts "\nEnter one character"
        c = gets.chomp
        check_character(c)
        check_gameover
      end
    end

    def current_word
      f = File.open("5desk.txt",'r')
      word =  f.readlines.shuffle.first
      f.close
     word
    end


    def check_character(c)
      if @word.include?(c)
        def check_buffer
        if input.include?(c)
          puts "Already entered"
        else
           (@input << c)
        end
        @word.each_char do |char|
          if @input.include?(char)
            print "#{char} "
            @count += 1
            @display << char
          else
            print "_ "
            @display << "_ "
          end
        end
      else
        print "Wrong Character\n"
        puts @display.join()
      end
      @guess -= 1
      puts "\n#{@guess} guess left"
    end


    def first_time
      if @guess == 7
        for i in 0..@size-1
          print "_ ".chomp
        end
      end
    end


    def check_gameover
      if @guess == 0
        puts "Game Over!!, You Lose"
      end
      if @count == @size
        puts @word
        puts "You Won!!, Well Played!!"
      end
    end


  end

  t1 = Hangman.new
  t1



