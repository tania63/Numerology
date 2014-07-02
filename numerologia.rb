#!/bin/env ruby
# encoding: utf-8

require 'sinatra'
result = { 
		1 => '1',
		2 => '2',
		3 => '3',
		4 => '4',
		5 => '5',
		6 => '6',
		7 => '7',
		8 => '8',
		9 => '9',
	}
	
get '/' do
	erb :numerology_template_new
end


post '/' do
	p request.body
	puts "Дата на раждане"
	date = params[birth_date]
	puts "Месец на раждане"
	month = params[birth_month]
	puts "Година на раждане"
	year = params[birth_year]

	sum = date.to_i + month.to_i + year.to_i

	while sum > 9 do 
		numbers_string = sum.to_s.split("")
		sum = 0
		numbers = numbers_string.map{ |number| number.to_i }
		numbers.each{ |number| sum += number }
	end

	"Пътят на живота е #{sum}"


end




