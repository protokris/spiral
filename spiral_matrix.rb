
def make_spiral(width, height, spiral=[], start_col=0, start_row=0, val=1)
  return spiral if width <=0 || height <=0

  instructions = {
    :right => {
      limit: width,
      col: 1,
      row: 0
    },
    :down => {
      limit: height-1,
      col: 0,
      row: 1
    },
    :left => {
      limit: width-1,
      col: -1,
      row: 0
    },
    :up => {
      limit: height-2,
      col: 0,
      row: -1
    }
  }

  col = start_col-1  # subtract 1 because we go right immediately
  row = start_row

  instructions.each do |direction, instruction|
    break if instruction[:limit].zero?  # if we have nothing to do we can exit loop

    instruction[:limit].times do
      col, row = col + instruction[:col], row + instruction[:row]
      spiral[row] = [] if spiral[row].nil?  # make sure row exists
      spiral[row][col] = val
      val += 1
    end
  end

  make_spiral(width-2, height-2, spiral, start_col+1, start_row+1, val)
end

def print_spiral(spiral)
  spiral.each { |row| puts row.inspect }
  puts "\n\n"
end

print_spiral make_spiral(4, 5)
print_spiral make_spiral(5, 4)
print_spiral make_spiral(4, 4)
print_spiral make_spiral(1, 4)
print_spiral make_spiral(4, 1)
