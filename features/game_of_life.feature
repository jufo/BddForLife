Feature: Game of Life
In order to demonstrate BDD
As an old programmer
I want a program to implement the Game of Life [1]

[1] http://en.wikipedia.org/wiki/Conway's_Game_of_Life

Scenario: A glider glides
Given a Universe with state:
  """
  .o..
  ..o.
  ooo.
  ....
  """
When time advances by 4 ticks
Then the state of the Universe should be:
  """
  ....
  ..o.
  ...o
  .ooo
  """
