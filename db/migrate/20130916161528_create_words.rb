class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :sorted_word
      t.timestamps
    end
    add_index :words, :sorted_word
  end
end
