begin
  load File.expand_path("../1.rb", __FILE__)
rescue LoadError
end

part_two_answer = 0

STRATEGY_STATES = Hash["X" => "LOST", "Y" => "DRAW", "Z" => "WIN"]

fight_against = ""
choice_val = 0

STRATEGY.each do |fight|
  outcome_val = OUTCOME_VALUE[STRATEGY_STATES[fight[1]]]
  fight_against = fight[0]
  STATES[STRATEGY_STATES[fight[1]]].each do |possible_fight|
    if possible_fight.include? fight_against
      choice_val = CHOICE_VALUE[possible_fight.split(" ")[1]]
    end
  end

  part_two_answer += choice_val + outcome_val
end

PART_TWO_VALUE = part_two_answer

puts "Answer to Part Two: #{PART_TWO_VALUE}"
