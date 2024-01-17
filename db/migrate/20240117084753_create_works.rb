class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.text :automatic_thought, null: false
      t.integer :cognitive_distortion_id, null: false
      t.text :rational_thought, null: false
      t.timestamps 
    end
  end
end
