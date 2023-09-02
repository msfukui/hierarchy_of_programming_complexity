# frozen_string_literal: true

require '3'

class TestUseLoop < Test::Unit::TestCase
  def test_use_loop_success
    assert_equal(true, use_loop('AAAA'), 'Should have returned true')
  end

  def test_use_loop_failure
    assert_equal(false, use_loop('AAAQ'), 'Should have returned false')
  end
end
