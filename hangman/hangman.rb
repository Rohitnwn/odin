class Hangman

    def initialize
      puts "Enter player name"
      @name = gets.chomp
      puts "Game Begins #{@name}!!"
      start
    end

    def start
      check_saved_game
      @word  ||= current_word.downcase
      @size  ||= @word.length
      @guess ||= 7
      @input ||= []
      first_time
      while @guess != 0
        puts "\nEnter one character or type quit to save and exit"
        c = gets.chomp.downcase
        place_character(c)
        check_gameover
      end
    end

    def current_word
      f = File.open("5desk.txt",'r')
      word =  f.readlines.shuffle.first
      f.close
      word.strip
    end


    def place_character(c)
      @display = []
      if @word.include?(c)
         print_character
      elsif c == "quit"
           save_game
      else
        print "Wrong Character"
        puts @display.join()
        @guess -= 1
      end
      puts "\n#{@guess} guess left"
    end


    def first_time
      if File.exists? "#{@name}"
        @word.each_char do |char|
          if @input.include?(char)
            print "#{char} "
          else
            print "_ "
          end
        end
      else
        for i in 0..(@size-1)
          print "_ ".chomp
        end
      end
    end


    def check_gameover
      if @guess == 0
        puts @word
        puts "Game Over!!, You Lose"
      end
      if !@display.include?("_ ") and !@display.empty?
        puts @word
        puts "You Won!!, Well Played!!"
        puts "Want to play again?Yes?No?"
        ans = gets.chomp.downcase
        if ans == "yes"
          start
        else
          exit
        end
      end
    end

    def check_buffer(c)
        if @input.include?(c)
          puts "Already entered"
        else
           (@input << c)
        end
    end

    def print_character
      check_buffer(c)
      @word.each_char do |char|
        if @input.include?(char)
          print "#{char} "
          @display << char
        else
          print "_ "
          @display << "_ "
        end
      end
    end

    def check_saved_game
      if File.exists? "#{@name}"
        puts "Earlier game exists want to resume?Yes?No?"
        anws = gets.chomp.downcase
        if anws == "yes"
        load_game
        else
         File.delete "#{@name}"
        end
      end
    end

     def save_game
        f = File.open("#{@name}", 'w')
        f.puts @word
        f.puts @guess
        f.puts @input.join("")
        f.close
        exit
     end

     def load_game
          f = File.open("#{@name}")
          contents = f.readlines
          @word = contents[0]
          @guess = contents[1].to_i
          @input = contents[2].split("")
          f.close
     end


  end

  t1 = Hangman.new
  t1
