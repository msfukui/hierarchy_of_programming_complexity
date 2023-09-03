# frozen_string_literal: true

def management_status(string)
  i = 0
  another_flg = false
  string.each_char do |v|
    return false if i.zero? && v != 'A'

    unless i.zero?
      return false if v == 'A' && another_flg

      another_flg = (v != 'A')
    end
    i += 1
  end
  another_flg
end
