class CreateIdol < ActiveRecord::Migration[5.2]
  def change
    create_table :idols do |t|
      t.string :name
      t.integer :age
      t.date :birth
      t.integer :height
      t.integer :weight
      t.string :handed
      t.array :bwh
    end
  end
end
