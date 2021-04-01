class CreateWordGenerators < ActiveRecord::Migration[6.1]
  def change
    create_table :word_generators do |t|
      t.string :word

      t.timestamps
    end
  end
end
