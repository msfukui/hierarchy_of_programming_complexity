# frozen_string_literal: true

def stack(string)
  i = 0
  another_flg = false
  bracket_flg = false
  bracket_duplex_flg = false
  bracket_count = 0
  sub_string = ''
  before_char = ''

  return false if string[-1] == ')'

  string.each_char do |v|
    return false if i.zero? && v != 'A'

    unless i.zero?

      if v == '('
        return false if bracket_duplex_flg

        return false if another_flg

        sub_string += v if bracket_flg
        bracket_flg = true
        bracket_count += 1
        next
      elsif v == ')'
        return false if bracket_count.zero?

        if bracket_count > 1
          sub_string += v
          bracket_count -= 1
          next
        end

        return false unless stack(sub_string)

        bracket_flg = false
        bracket_count = 0
        sub_string = ''
        bracket_duplex_flg = true
        next
      elsif bracket_flg
        sub_string += v
        next
      end

      return false if v == 'A' && bracket_duplex_flg

      return false if v == 'A' && another_flg

      another_flg = (v != 'A')
    end
    i += 1
  end
  return false if bracket_flg

  another_flg
end
