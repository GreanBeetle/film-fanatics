class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.column :year_id, :integer 
      t.column :title, :string
      t.column :director, :string
      t.column :release_date, :date
      t.column :genre, :string
      t.column :opening_gross, :numeric

      t.timestamps
    end
  end
end
