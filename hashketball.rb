

require "pry"

def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",

    :colors => ["Black", "White"],
      :players => {
          "Alan Anderson"=>{
          :number => 0,
          :shoe => 16,
          :stats => {
          :points_scored => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        }
        },
    "Reggie Evans"=> {
      :number => 30,
      :shoe => 14,
      :stats => {
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
    }
    },
       "Brook Lopez"=> {
      :number => 11,
      :shoe => 17,
      :stats => {
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
    }
      },
       "Mason Plumlee"=>{
      :number => 1,
      :shoe => 19,
      :stats => {
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
    }
   },
     "Jason Terry" => {
      :number => 31,
      :shoe => 15,
      :stats => {
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
}
  }

}

},
  :away => {
   :team_name => "Charlotte Hornets",
   :colors => ["Turquoise", "Purple"],
   :players => {
     "Jeff Adrien"=> {
      :number => 4,
      :shoe => 18,
      :stats => {
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
    }
     },
       "Bismak Biyombo" => {
      :number => 0,
      :shoe => 16,
      :stats => {
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 7,
      :blocks => 15,
      :slam_dunks => 10
    }
     },
       "DeSagna Diop"=> {
      :number => 2,
      :shoe => 14,
      :stats => {
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
    }
     },
     "Ben Gordon"=>{
      :number => 8,
      :shoe => 15,
      :stats => {
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
    }
     },
       "Brendan Haywood"=>{
      :number => 33,
      :shoe => 15,
      :stats => {
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
    }
     }


}

}
}

end



def num_points_scored(player_name)
  game_hash.each do |team, points|
    binding.pry
     team[:players].each do |players|
    binding.pry
       players[:points].each do |points|
      binding.pry
    points
end
end
end


end




def shoe_size(player_name)
  game_hash.each do |player, team|
          if team[:players][player_name]
               return team[:players][player_name][:shoe]
          end
      end


end
def team_colors(team)
  game_hash.values.each do |team_stats|
    if team_stats.has_value?(team)
        return team_stats[:colors].collect(&:capitalize)
    end
  end

end


def team_names
  game_hash.values.collect {|value| value[:team_name]}

end
def player_numbers(team)
  game_hash.each do |player|
   if player == [:team_name]
        return player[:players].collect { |player| player[:number]}
end
end

end
def player_stats(player_name)
  game_hash.each do |team, team_stats|
   team_stats[:players].each do |player, team_stats|
     if team_stats[:name] == player_name
       return  player_name[:stats]
      end

end

end
end




def big_shoe_rebounds
  big_shoe = 0
   player_rebounds = 0
    game_hash.values.each do |team_stats|
      team_stats[:players].each do |player|
       if player[:shoe] > big_shoe
          big_shoe = player[:shoe]
          player_rebounds = player[:rebounds]
        end
     end
   end
      return player_rebounds
# First, find the player with the largest shoe size
  #Then, return that player's number of rebounds
end
def most_points_scored
  most_points = 0
  points_leader = [:player_name]
  game_hash.values.each do |team_stats|
    team_stats[:players].each do |player|
      if player[:points] > most_points
       most_points = player[:points]
        points_leader = player[:player_name]
      end
    end
  end
   return points_leader
  
end

#def winning_team()
  # Which team has the most points?
#end
#def player_with_longest_name()
#  Which player has the longest name?

#end
#def long_name_steals_a_ton()
  #Write a method that returns true if the player
  #with the longest name had the most steals.
#end
