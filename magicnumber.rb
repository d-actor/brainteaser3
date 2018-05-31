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
  length = @number.to_words.split("").length
  puts "#{@number} is #{length}"
  @number = length
  if @number == 4
    print "And 4 is the magic number".green
  else
    magic
  end
end

menu
