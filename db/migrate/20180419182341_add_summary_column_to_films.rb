class AddSummaryColumnToFilms < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :summary, :string
  end
end
