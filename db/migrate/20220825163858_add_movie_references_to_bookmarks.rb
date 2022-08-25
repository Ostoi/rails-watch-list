class AddMovieReferencesToBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :movie_id, :integer
    add_reference :bookmarks, :movie, null: false, foreign_key: true
  end
end
