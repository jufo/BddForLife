def trim_dead_cells(state)
  # TODO: remove dead right-hand columns and bottom rows from multiline string
  state
end

Given /^a Universe with state:$/ do |state|
  @universe = GameOfLife::Universe.new(state)
end

When /^time advances by (\d+) ticks$/ do |ticks|
  ticks.to_i.times { @universe.tick! }
end

Then /^the state of the Universe should be:$/ do |expected_state|
  trim_dead_cells(@universe.to_s).should == trim_dead_cells(expected_state)
end
