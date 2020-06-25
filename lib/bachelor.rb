def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |season_data, contestants|
    if season_data == season
      contestants.each do |contestant_hash|
        if contestant_hash["status"] == "Winner"
          winner = contestant_hash["name"]
        end
      end
    end
  end
  return winner.split(" ").first
end

def get_contestant_name(data, occupation)
  data.each do |season_data, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_data, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season_data, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  total_age = 0
  num_contestants = 0
  data.each do |season_data, contestants|
    if season_data == season
      contestants.each do |contestant_hash|
        total_age += contestant_hash["age"].to_f
        num_contestants += 1
      end
    end
  end
  return (total_age/num_contestants).round
end
