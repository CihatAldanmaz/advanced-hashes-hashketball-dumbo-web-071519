def game_hash  

  game_hash = {
 
     :home => {
 
     :team_name => 'Brooklyn Nets',
     :colors => ['black', 'white'],
     :players => [
       {player_name: 'Alan Anderson', number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
       {player_name: 'Reggie Evans', number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
       {player_name: 'Brook Lopez', number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
       {player_name: 'Mason Plumlee', number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
       {player_name: 'Jason Terry', number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
       ]
     },
 
 
 
   :away => {
 
     :team_name => 'Charlotte Hornets',
     :colors => ['turquoise', 'purple'],
     :players => [
       {player_name: 'Jeff Adrien', number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
       {player_name: 'Bismak Biyombo', number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
       {player_name: 'DeSagna Diop', number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
       {player_name: 'Ben Gordon', number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
       {player_name: 'Kemba Walker', number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 7, blocks: 5, slam_dunks: 12}
       ]
     }
   }
 end
 

def num_points_scored(player_name)
game_hash.values.each do |team_info|
  team_info[:players].each do |player|
    return player[:points] if player.has_value?(player_name)
  end
end

end

def shoe_size(player_name)
game_hash.values.each do |team_info|
team_info[:players].each do |player|
return player[:shoe] if player.has_value?(player_name)
end
end
end


def team_colors(team_name)

game_hash.values.each do |team_info|
return team_info[:colors] if team_info.has_value?(team_name)
end
end



def team_names

  game_hash.values.map {|value| value[:team_name]}

end

# def player_numbers(team)
#   new_arr = []
#   game_hash.values.each do |team_info|
#     if team_info.has_value?(team)
#       team_info[:players].each do |player|
#         new_arr << player[:number]
#       end

#     # return team_info[:players].map {|player| player[:number]}
#     end
#     return new_arr
#   end
  
# end


def player_numbers(team)
  new_arr = []
game_hash.values.each do |team_info|
team_info[:players].each do |player|
new_arr << player[:number] if player.has_value?(team_info)
end

end
return new_arr
end


def player_stats(player_name)
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player.has_value?(player_name)
        
        return player
      end
    end
  end
end

# def big_shoe_rebounds

#   biggest_shoe = 0
#   player_rebounds = 0
#   game_hash.values.each do |team_info|
#     team_info[:players].each do |player|
#       if player[:shoe] > biggest_shoe
#         biggest_shoe = player[:shoe] 
#         player_rebounds = player[:rebounds] 
#       end
#     end
#   end
#   return player_rebounds
# end

<<<<<<< HEAD

def big_shoe_rebounds
biggest_shoe = 0
player_rebounds = 0
game_hash.values.each do |team_info|
team_info[:players].each do |player|

=======

def big_shoe_rebounds
biggest_shoe = 0
player_rebounds = 0
game_hash.values.each do |team_info|
team_info[:players].each do |player|

>>>>>>> 94f6ffb11fff6dc2d3695da374cddb90a214e05c
  shoe = player[:shoe]
  
  if shoe > biggest_shoe
    biggest_shoe = shoe
     player_rebounds = player[:rebounds]
  end
end
end
return player_rebounds
end

def most_points_scored

  most_points_scored = 0
  points_owner = ""
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:points] > most_points_scored
        most_points_scored = player[:points]
        points_owner = player[:player_name]
      end
  end
  
end
return points_owner
end
<<<<<<< HEAD

# def winning_team
# total_points = 0
# winner_team = ""

# game_hash.values.each do |team_info|
# team_info[:players].each do |player|
# total_points += player[:points]
# winner_team = team_info[:team_name]
# end
# end
# return winner_team

# end

def winning_team
  total_points = 0
  win_team = ''
  game_hash.each do |home_away, keys|
    team_points = 0
    team_name = game_hash[home_away][:team_name]
    keys[:players].each do |player|
      points = player[:points]
      team_points += points
    end
    win_team, total_points = team_name, team_points if team_points > total_points
  end
  return win_team
end

# def player_with_longest_name
#   longest = ''
#   longest_length = 0
#   game_hash.values.each do |team_info|
#     team_info[:players].each do |player|
#       name_length = player[:player_name].length
#       if name_length > longest_length
#       longest_length = name_length 
#       longest = player[:player_name]
#       end
#     end
#   end
#   return longest
# end

def player_with_longest_name?
  longest = ""
  length = 0
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:player_name].length > length
        length = player[:player_name].length
        longest = player[:player_name]
      end
    end
  end
  return longest
end



 
 
def most_steals?
  steal = 0
  most_steals_player = ""
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:steals] > steal
        steal = player[:steals]
        most_steals_player = player[:player_name]
      end
    end
  end
  return most_steals_player
end

def long_name_steals_a_ton?
if most_steals? == player_with_longest_name?
return true
end
end
=======

# def winning_team
# total_points = 0
# winner_team = ""

# game_hash.values.each do |team_info|
# team_info[:players].each do |player|
# total_points += player[:points]
# winner_team = team_info[:team_name]
# end
# end
# return winner_team

# end

def winning_team
  total_points = 0
  win_team = ''
  game_hash.each do |home_away, keys|
    team_points = 0
    team_name = game_hash[home_away][:team_name]
    keys[:players].each do |player|
      points = player[:points]
      team_points += points
    end
    win_team, total_points = team_name, team_points if team_points > total_points
  end
  return win_team
end

# def player_with_longest_name
#   longest = ''
#   longest_length = 0
#   game_hash.values.each do |team_info|
#     team_info[:players].each do |player|
#       name_length = player[:player_name].length
#       if name_length > longest_length
#       longest_length = name_length 
#       longest = player[:player_name]
#       end
#     end
#   end
#   return longest
# end

def player_with_longest_name?
  longest = ""
  length = 0
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:player_name].length > length
        length = player[:player_name].length
        longest = player[:player_name]
      end
    end
  end
  return longest
end



 
 
def most_steals?
  steal = 0
  most_steals_player = ""
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:steals] > steal
        steal = player[:steals]
        most_steals_player = player[:player_name]
      end
    end
  end
  return most_steals_player
end

def long_name_steals_a_ton?
if most_steals? == player_with_longest_name?
return true
end
end

>>>>>>> 94f6ffb11fff6dc2d3695da374cddb90a214e05c
