# frozen_string_literal: true

require_relative 'lib/4'

puts '文字列を入力してください'
v = gets.chomp
puts management_status(v)
