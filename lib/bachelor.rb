def get_first_name_of_season_winner(data, season)
  season.each do |key, value|
    if value == "Winner"
      winner = season[0]
    else
  end
  winnerName = winner.split(" ")
  return winnerName[0]
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
