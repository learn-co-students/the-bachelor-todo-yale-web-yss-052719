require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      space_index = contestants["name"].index(" ")
      return contestants["name"][0..space_index-1]
    end
  end
end

def get_contestant_name(data, occupation)
data.each do |season, contestants|
  contestants.each do |person|
    if person["occupation"] == occupation
      return person["name"]
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
data.each do |season,contestants|
  contestants.each do |person|
    if person["hometown"] == hometown
      hometown_count +=1
    end
end
end
hometown_count
end

def get_occupation(data, hometown)
  occupation = String.new
  data.each do |season,contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        occupation =  person["occupation"]
        break
      end
    end
  end
occupation
end

def get_average_age_for_season(data, season)
avg_age = 0
num_contestants = 0
total_age = 0
  data[season].each do |contestants|
    total_age = total_age + contestants["age"].to_f
    num_contestants +=1
    avg_age = total_age/num_contestants
  end
  avg_age.round(0)
end
