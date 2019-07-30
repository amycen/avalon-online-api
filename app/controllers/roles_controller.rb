class RolesController < ApplicationController

    def get_roles
        roles = []
        roles << Role.find_by({abbreviation: "MER"})
        roles << Role.find_by({abbreviation: "ASS"})
        remaining_players = params[:playerNum].to_i - 2
        if (remaining_players >= 3)
            roles << Role.find_by({abbreviation: "LS1"})
            roles << Role.find_by({abbreviation: "LS2"})
            roles << Role.find_by({abbreviation: "MM1"})
        end
        if (remaining_players >= 4)
            roles << Role.find_by({abbreviation: "LS3"})
        end
        if (remaining_players >= 5)
            roles << Role.find_by({abbreviation: "MM2"})
        end
        if (remaining_players >= 6)
            roles << Role.find_by({abbreviation: "LS4"})
        end
        if (remaining_players >= 7)
            roles << Role.find_by({abbreviation: "LS5"})
        end
        if (remaining_players >= 8)
            roles << Role.find_by({abbreviation: "MM3"})
        end

        render json: roles.shuffle
    end
end