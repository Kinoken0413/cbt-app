class AddUserIdToWorks < ActiveRecord::Migration[7.0]
  def change
    add_reference :works, :user, null: false, foreign_key: true
  end
end
