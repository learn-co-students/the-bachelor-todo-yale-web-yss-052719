def get_first_name_of_season_winner(data, season)
  data[season].each do |winner|
    if winner["status"] == "Winner"
      return winner["name"].partition(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_data|
    contestant_data.each do |selection|
      selection.each do |key, value|
        if value == occupation
          return selection["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant_data|
    contestant_data.each do |selection|
      selection.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_data|
    contestant_data.each do |selection|
      selection.find do |key, value|
        if value == hometown
          return selection["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |contestant|
    age = contestant["age"].to_f
    age_array << age
  end
  return (age_array.inject(0) {|sum, i|  sum + i } / age_array.size).round

end
