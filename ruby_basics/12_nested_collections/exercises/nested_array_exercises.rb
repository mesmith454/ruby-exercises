def blank_seating_chart(number_of_rows, seats_per_row)
  # X return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
  # represent that each seat is empty.
    new_array = Array.new(number_of_rows) { Array.new(seats_per_row)}
      # immutable method of creating nested array

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
end

def add_seat_to_row(chart, row_index, seat_to_add)
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at row_index index of the chart, then return the chart
  chart[row_index].push(seat_to_add)
  return chart
end

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.
  chart.push(row_to_add)
  return chart
end

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart
  chart[row_index].delete_at(seat_index)
  return chart

  # pop does not take an argument, only deletes last element. delete_at is better used here
  # Hint: explore the ruby docs to find a method for deleting from an array!
end

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  # then return the chart
  chart.delete_at(row_index)
  chart
end

def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it
  chart.flatten.count(nil)
      # takes chart, flattens it into a single array and counts instances of nil
  # NOTE: `chart` should **not** be mutated
end

def find_favorite(array_of_hash_objects)
  # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil
  array_of_hash_objects.find { |hash| hash[:is_my_favorite?]}
    # takes the array uses find to iterate through hash to find key is_my_favorite

  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key
end
