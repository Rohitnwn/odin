  class Hangman

    def initialize
    	#puts "Enter player name"
    	#@name = gets.chomp
    	puts "Game Begins #{@name}!!"
    	start
    end

    def start
      @word = current_word
      puts @word
      @size = @word.length
      @guess = 7
      @count = 0
      @input = []
      while @guess != 0
        first_time
        puts "\nEnter one character"
        c = gets.chomp
        place_character(c)
        check_gameover
        puts @count
      end
    end

    def current_word
      f = File.open("5desk.txt",'r')
      word =  f.readlines.shuffle.first
      f.close
      word.strip
    end


    def place_character(c)
      @display
      if @word.include?(c)
        check_buffer(c)
        @display = []
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
        @guess -= 1
      end
     
      puts "\n#{@guess} guess left"
    end


    def first_time
      if @guess == 7 and @count == 0
        for i in 0..(@size-1)
          print "_ ".chomp
        end
      end
    end


    def check_gameover
      puts "In gameover"
      if @guess == 0
        puts "Game Over!!, You Lose"
      end
      if @count == @size
        puts @word
        puts "You Won!!, Well Played!!"
      end
    end

    def check_buffer(c)
        if @input.include?(c)
          puts "Already entered"
        else
           (@input << c)
        end
    end


  end

  t1 = Hangman.new
  t1



