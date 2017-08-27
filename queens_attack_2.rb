# A queen is standing on an nxn chessboard. The chessboard's rows are numbered from 1 to n, going
# from bottom to top; its columns are numbered from 1 to n, going from left to right. Each square
# on the board is denoted by a tuple, (r,c), describing the row, r, and column, c, where the square
# is located.

# The queen is standing at position r[q] and c[q], in a single move, she can attack any square in
# any of the eight directions (left, right, up, down, or the four diagonals). In the diagram below,
# the green circles denote all the cells the queen can attack from

# given k obstacles at r and c values, how many squares can the queen visit if an obstacle prevents
# her from visiting the squares beyond the obstacles



#!/bin/ruby

# n,k = gets.strip.split(' ')
n,k = '100000 0'.split(' ')
n = n.to_i
k = k.to_i

puts "n:#{n} k:#{k}"
# rQueen,cQueen = gets.strip.split(' ')
rQueen,cQueen = '4187 5068'.split(' ')

rQueen = rQueen.to_i
cQueen = cQueen.to_i

obstacles = {}
for a0 in (0..k-1)
    rObstacle,cObstacle = gets.strip.split(' ')
    rObstacle = rObstacle.to_i
    cObstacle = cObstacle.to_i
    obstacles["#{rObstacle}_#{cObstacle}"] = true
end

class QueenAttack

  def initialize(board_size, obstacles, queen_row, queen_col)
    @queen = [queen_row, queen_col]
    @board_size = board_size
    @obstacles = obstacles
  end

  def possible_moves
    moves = 0
    directions.each do |direction| # eight possible directions a queen can move
      puts "processing: #{direction}"
      moves += direction_count(direction) # number of moves that can be traveled in one direction
    end
    moves
  end

  private

  def direction_count(direction)
    steps = 0
    current = [@queen[0], @queen[1]]

    # advance 1 rank
    current[0] += direction[0]
    current[1] += direction[1]

    while in_bounds?(current) && clear?(current)  # increment steps as long as current is in
                                                  # bounds and clear
      steps       += 1
      current[0]  += direction[0]
      current[1]  += direction[1]
    end

    steps
  end

  def directions
    # all possible displacements of [queen_row, queen_col]
    [[-1,1],[-1,-1],[-1,0],[1,1],[1,-1],[1,0],[0,1],[0,-1]]
  end

  def in_bounds?(point)
    point[0] >=1 && point[0] <= @board_size && point[1] >=1 && point[1] <= @board_size
  end

  def clear?(point)
    !@obstacles["#{point[0]}_#{point[1]}"]
  end
end

solver = QueenAttack.new(n, obstacles, rQueen, cQueen)
puts solver.possible_moves


