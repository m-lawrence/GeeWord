class CreateContributions < ActiveRecord::Migration[6.1]
  def change
    create_table :contributions do |t|
      t.string :contributor_content
      t.integer :user_id
      t.integer :story_id

      t.timestamps
    end
  end
end
