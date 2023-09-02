# frozen_string_literal: true

def use_loop(string)
  flg = false
  string.each_char do |v|
    if v == 'A'
      flg = true
    else
      flg = false
      break
    end
  end
  flg
end

puts '文字列を入力してください'
v = gets.chomp
puts use_loop(v)
