require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      array = contestant["name"].split(" ")
      return array[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_ages = 0
  data[season].each do |hash|
    sum_ages = sum_ages + hash["age"].to_f
  end
  number = data[season].length
  average_age = sum_ages / number
  average_age.round
end
