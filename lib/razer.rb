require "razer/version"

module Razer
  #
  # A small utility class which for flattening nested arrays.
  #
  class Flattener
    # Flattens the input +array+ of arrays into a uni-dimensional one
    # preserving the relative order of eelements. If an empty array is
    # provided then the exact same empty array objevct will be returned.
    #
    # The algorithm is guaranteed to flatten the input array in O(n) time
    # and O(n) space with +n+ being the sum of the sizes of all involved
    # arrays including the top level one.
    #
    #   input_array = [1, [2, 3, [4, 5, [6]]]]
    #
    #   flattener = Flattener.new
    #   flattener.flatten(input_array) # => [1, 2, 3, 4, 5, 6]
    #
    def flatten(array, accumulator = [])
      return array if array.empty?

      array.each do |element|
        if element.is_a?(Array)
          flatten(element, accumulator)
        else
          accumulator.push(element)
        end
      end

      accumulator
    end
  end
end
