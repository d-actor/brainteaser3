require 'colorize'
require 'pry'
require 'to_words'

def menu
  print `clear`
  puts "--4 is the magic number--".yellow
  puts "Enter any postive number:".yellow
  @number = STDIN.gets.strip.to_i
  magic
end

def magic
  puts "#{@number} is #{@number.to_words.split("").length}"
  @number = @number.to_words.split("").length
  if @number == 4
    print "And 4 is the magic number"
  else
    magic
  end
end

menu
