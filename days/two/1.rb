STRATEGY = Array.new

CHOICE_VALUE = Hash["X" => 1, "Y" => 2, "Z" => 3]
OUTCOME_VALUE = Hash["LOST" => 0, "DRAW" => 3, "WIN" => 6]

part_one_answer = 0

STATES =
  Hash[
    "DRAW" => Array["A X", "B Y", "C Z"],
    "WIN" => Array["A Y", "B Z", "C X"],
    "LOST" => Array["A Z", "B X", "C Y"]
  ]

File
  .readlines("./inputs.txt")
  .each do |line|
    key = String.new(line).split("/")[0].split(" ")[0]
    value = String.new(line).split("/")[0].split(" ")[1]
    STRATEGY.push(Array[key, value])
  end

STRATEGY.each do |fight|
  state = "LOST"
  STATES.each do |name, state_possibility|
    state = name if state_possibility.include? fight.join(" ")
  end
  part_one_answer += CHOICE_VALUE[fight[1]] + OUTCOME_VALUE[state]
end

PART_ONE_VALUE = part_one_answer

puts "Answer to Part One: #{PART_ONE_VALUE}"
