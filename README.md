# Spiral Matrix Problem

Given an M x N matrix, print all the elements in spiral order.

## Explanation

This is a recursive approach, each run of the make_spiral function goes right, down, left, up and fills in the outer square.

Then it re-runs the function on the empty, inside part of the matrix.

## Running

Run the file using Ruby!

## Output

```

[1, 2, 3, 4]
[14, 15, 16, 5]
[13, 20, 17, 6]
[12, 19, 18, 7]
[11, 10, 9, 8]


[1, 2, 3, 4, 5]
[14, 15, 16, 17, 6]
[13, 20, 19, 18, 7]
[12, 11, 10, 9, 8]


[1, 2, 3, 4]
[12, 13, 14, 5]
[11, 16, 15, 6]
[10, 9, 8, 7]


[1]
[2]
[3]
[4]


[1, 2, 3, 4]

```
