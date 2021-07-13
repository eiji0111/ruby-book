require 'minitest/autorun'
require './lib/team'
require './lib/bank'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal ['japan', 'US', 'india'], Team::COUNTRIES
    assert Team::COUNTRIES.all? { |country| country.frozen? }
    assert Team::COUNTRIES.frozen?
  end

  def test_deep_freeze_to_hash
    assert_equal ({'japan' => 'yen', 'US' => 'dollar', 'india' => 'rupee'}), Bank::CURRENCIES
    assert Bank::CURRENCIES.each { |k, v| k.frozen? && v.frozen? }
    assert Bank::CURRENCIES.frozen?
  end
end