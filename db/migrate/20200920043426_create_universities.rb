class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.integer :rank
      t.text :remarks

      t.timestamps
    end
  end
end
