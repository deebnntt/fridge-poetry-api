class AddColorColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :poems, :color, :string, default: "#FFB6C1"
  end
end
