# frozen_string_literal: true

require '5'

class TestStack < Test::Unit::TestCase
  def test_stack_「A」以外の文字で始まっている
    assert_equal(false, stack('BAAAABBBCB'), 'Should have returned false')
  end

  def test_stack_「A」が続くだけで終わっている
    assert_equal(false, stack('AAAAAAA'), 'Should have returned false')
  end

  def test_stack_「A」以外の文字のあとにふたたび「A」が来ている
    assert_equal(false, stack('AAAABBBCCBA'), 'Should have returned false')
  end

  def test_stack_trueを返す
    assert_equal(true, stack('AAAABBBCCBB'), 'Should have returned true')
  end

  def test_stack_AとA以外の文字の間を括弧で囲んでその中の文字列がtrueの場合もtrueを返す
    assert_equal(true, stack('AAAA(AABBB)BBCC'), 'Should have returned true')
  end

  def test_stack_括弧は入れ子でもOK
    assert_equal(true, stack('AAA(AAA(AB)B)BCC'), 'Should have returned true')
  end

  def test_stack_「A」以外の文字のあとに括弧がきている
    assert_equal(false, stack('AAABB(AAB)BB'), 'Should have returned false')
  end

  def test_stack_括弧のあとに「A」がきている
    assert_equal(false, stack('AAA(AAB)ABB'), 'Should have returned false')
  end

  def test_stack_括弧が閉じていない_閉じ括弧がない
    assert_equal(false, stack('AAA(AAB'), 'Should have returned false')
  end

  def test_stack_括弧が閉じていない_開き括弧がない
    assert_equal(false, stack('AAA)BB'), 'Should have returned false')
  end

  def test_stack_括弧の後にA以外の文字がない
    assert_equal(false, stack('AAA(AAB)'), 'Should have returned false')
  end

  def test_stack_括弧が二回続いている
    assert_equal(false, stack('AA(AB)(AB)BB'), 'Should have returned false')
  end
end
