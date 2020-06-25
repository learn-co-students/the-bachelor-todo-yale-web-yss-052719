def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |arr|
    if arr["status"] == "Winner"
      return arr["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, arr|
    arr.each do |info|
      info.each do |key, val|
        if val == occupation
          return info["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num = 0
  data.each do |season, arr|
    arr.each do |info|
      if info["hometown"] == hometown
        num += 1
      end
    end
  end
  num
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, arr|
    arr.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  num = 0
  data[season].each do |arr|
    arr.each do |key, val|
      age += arr["age"].to_f
      num +=1
    end
  end
  (age/num).round
end
