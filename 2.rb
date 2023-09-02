# frozen_string_literal: true

puts '1か2を入力してください'
v = gets.chomp
if v == '1'
  puts 'ガケに落ちました'
elsif v == '2'
  puts 'ライオンに食われました'
end
