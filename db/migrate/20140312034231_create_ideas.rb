class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
