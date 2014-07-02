#!/bin/env ruby
# encoding: utf-8

puts "Дата на раждане"
birth_day = gets.chomp
puts "Месец на раждане"
month = gets.chomp
puts "Година на раждане"
year = gets.chomp

sum = date.to_i + month.to_i + year.to_i

while sum > 9 do 
	numbers_string = sum.to_s.split("")
	sum = 0
	numbers = numbers_string.map{ |number| number.to_i }
	numbers.each{ |number| sum += number }
end

puts "Пътят на живота е #{sum}"

calculator = File.read('numerology_template.html')
File.write "numerology.html", calculator % values
