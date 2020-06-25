def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      name = contestant["name"]
      break
    end
  end

  first_name = name.split(" ").first
  first_name

end

def get_contestant_name(data, occupation)
  # code here

  contestants = data.values.flatten

  person =
    contestants.find do |contestant|
      contestant["occupation"] == occupation
    end

  person["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestants = data.values.flatten
  hometown_people = contestants.select { |c| c["hometown"] == hometown }
  hometown_people.length
end

def get_occupation(data, hometown)
  # code here
  contestants = data.values.flatten

  person =
    contestants.find do |contestant|
      contestant["hometown"] == hometown
    end

  person["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  amount_of_contestants = 0
  sum_of_contestant_ages = 0
  data[season].each do |contestant|
    amount_of_contestants += 1
    sum_of_contestant_ages += contestant["age"].to_i
  end

  (sum_of_contestant_ages.to_f / amount_of_contestants.to_f).round
end
