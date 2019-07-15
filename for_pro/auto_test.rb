# 自動化を学ぶ
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
      assert_equal 'RUBY', 'ruby'.upcase
  end
end