class DeleteTagColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :poems, :tags
  end
end
