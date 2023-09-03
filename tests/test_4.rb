# frozen_string_literal: true

require '4'

class TestManagementStatus < Test::Unit::TestCase
  def test_management_status_「A」以外の文字で始まっている
    assert_equal(false, management_status('BAAAABBBCB'), 'Should have returned false')
  end

  def test_management_status_「A」が続くだけで終わっている
    assert_equal(false, management_status('AAAAAAA'), 'Should have returned false')
  end

  def test_management_status_「A」以外の文字のあとにふたたび「A」が来ている
    assert_equal(false, management_status('AAAABBBCCBA'), 'Should have returned false')
  end

  def test_management_status_trueを返す
    assert_equal(true, management_status('AAAABBBCCBB'), 'Should have returned true')
  end
end
