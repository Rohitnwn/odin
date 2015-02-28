require 'jumpstart_auth'
require 'bitly'
require 'klout'
Bitly.use_api_version_3


class MicroBlogger
  attr_reader :client

  def initialize
    puts " initialising.. "
    @client = JumpstartAuth.twitter
    Klout.api_key = 'xu9ztgnacmjx3bu82warbr3h'
    @bitly = Bitly.new('hungryacademy', 'R_430e9f62250186d2612cca76eee2dbc6')
  end

  def followers_list
    screen_names = []
    @client.followers.each do |follower|
      screen_names << @client.user(follower).screen_name
    end
    screen_names
  end

  def tweet(message)
    @client.update(message)
  end

  def dm(target, message)
    puts "Trying to send #{target} this direct message"
    puts message

    if followers_list.include?(target)
      message = "d #{target} #{message}"
      tweet(message)
    else
      puts "Error you can send dm to peoples only following you"
    end
  end


  def spam_my_friends(message)
    followers_list.each do |follower|
      dm(follower, message)
    end
  end

  def everyones_last_tweet
    friends = @client.friends.sort_by{|friend| friend.screen_name.downcase}
    friends.each do |friend|
      timestamp = friend.status.created_at
      puts "#{friend.screen_name} said this on #{timestamp.striftime("%A, %b %d")}.."
      puts "#{friend.status.text}"
      puts ""
    end
  end


  def shorten(original_url)
    @bitly.shorten("http://#{original_url}")
  end

  def klout_score
     friends = @client.friends.each {|f| f.screen_name }
     friends.each do |f|
        puts f.screen_name
        identity = Klout::Identity.find_by_screen_name("#{f}")
        user = Klout::User.new(identity.id)
        puts user.score.score
        puts ""
      end
  end

  def run
    puts "Welcome to JSL client twitter account"
    command  = ""
    while command != "q"
      printf "Enter command:"
      input = gets.chomp
      parts= input.split(" ")
      command = parts[0]
      case command
        when "q" then puts "Goodbye!"
        when "t"
           tweet(parts[1..-1].join(" "))
        when "dm"
           dm(parts[1], parts[2..-1].join(" "))
        when "spam"
           spam_my_friends(parts[1..-1].join(" "))
        when "elt"
          everyones_last_tweet
        when "turl"
          tweet(parts[1..-2].join(" ") + " " + shorten(parts[-1]).to_s)
        else
          puts "Sorry i don't know how to #{command}"
      end
    end
  end

end

blogger = MicroBlogger.new
blogger.followers_list
blogger.run
blogger.klout_score
