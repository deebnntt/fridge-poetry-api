class ChangePoemsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :poems, :wordlist
  end
end
