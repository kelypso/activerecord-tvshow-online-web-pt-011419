=begin
class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :season, :string
  end
end
=end

class AddSeasonToShows < ActiveRecord::Migration
    def change
        add_column :shows, :season, :string
    end
end