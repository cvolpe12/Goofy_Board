class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :points
      t.belongs_to :user

      t.timestamps
    end
  end
end
