class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title
      t.string :image
      t.text :keywords

      t.timestamps
    end
  end
end
