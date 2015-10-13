## Environment Requirements

The app must run on:

- Ruby >= 2.1.4
 - Feel free to upgrade the ruby version located in `Gemfile` if you want.
- You will need to install `bundler` and do a `bundle install` in the directory to get the required gems installed

## Task

You are going to create a Gif pronunciation simulator. To do so, please implement the following methods:

### Simulator#initialize(seating_arrangement)

- `seating_arrangement` is an array of array which represents the people in the initial seating arrangement

- Each element in the inner array is one of: `:hard`, `:soft`, or `:none`

### Simulator#verdict

- If the majority of opinionated people think it is a hard g it returns `:hard`

- If the majority of opinionated people think it is a soft g it returns `:soft`

- If the opinions are equal then return :push

### Simulator#state

- Returns an array of arrays that represents the people in the current seating arrangement

- Each element in the inner array is one of: `:hard`, `:soft`, or `:none`

### Simulator#next

- Updates the opinions of all of the people in the seating arrangement based on the rules below

#### Rules

- If a person with an opinion has fewer than 2 opinionated neighbours then they stop having an opinion since there are not enough people to argue with.

- If a person with an opinion has more than 3 opinionated neighbours then they stop having an opinion since their opinion is drowned out by their neighbours.

- If a person without an opinion has exactly 3 opinionated neighbours and at least 2 of them think "Gif" is pronounced with a hard G then they form an opinion that it is pronounced with a hard G

- If a person without an opinion has exactly 3 opinionated neighbours and at least 2 of them think "Gif" is pronounced with a soft G then they form an opinion that it is pronounced with a soft G

#### Assumptions
- There will be an NxM seating arrangement
- A neighbour is an adjacent person in the seating arrangement (including diagonals)
- There are hard edges in the seating arrangement (no wrapping around)
- Each person can either think Gif is pronounced with a hard G, a soft G, or they can not have an opinion
- All state transitions happen simultaneously

## Tests

- There is a spec (`spec/simulator_spec.rb`) that outlines some basic scenarios to help you get started. We'd love it if you added some more tests.

- This can be run via `bundle exec rspec spec/simulator_spec.rb`
