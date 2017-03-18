require 'minitest/autorun'

class FlattenerTest < MiniTest::Unit::TestCase
  def setup
    @flattener = Razer::Flattener.new
  end

  def test_it_flattens_the_input_array
    input_array = [1, 2, [3, 4, [5, 6]]]
    assert_equal [1, 2, 3, 4, 5, 6], @flattener.flatten(input_array)
  end

  def test_it_flattens_the_input_array_preserving_order
    input_array = [6, 4, [3, 3, [5, 6, 7, [8, 9, 10]]]]
    assert_equal [6, 4, 3, 3, 5, 6, 7, 8, 9, 10], @flattener.flatten(input_array)
  end

  def test_it_flattens_an_already_flattened_array
    input_array = [1, 2, 3, 4, 5, 6]
    assert_equal [1, 2, 3, 4, 5, 6], @flattener.flatten(input_array)
  end

  def test_it_does_not_flatten_an_empty_array_returning_it_to_the_caller
    input_array = []
    assert input_array.equal?(@flattener.flatten(input_array)), 'the result must be the exact same input object'
  end

  class MyArray < Array; end

  def test_it_flattens_array_like_objects
    input_array = MyArray.new
    input_array.push(1)
    input_array.push(2)
    input_array.push([3, 4, [5, 6]])
    assert [1, 2, 3, 4, 5, 6], @flattener.flatten(input_array)
  end
end