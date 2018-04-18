class CreateYears < ActiveRecord::Migration[5.1]
  def change
    create_table :years do |t|
      t.column :year, :integer
    end
  end
end
