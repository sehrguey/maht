class CreateW2words < ActiveRecord::Migration[5.2]
  def change
    create_table :w2words do |t|
      t.string :expression
      t.string :interpretation
      t.text :usage_neutral
      t.text :usage_intense
      t.string :category
      t.string :category_definition
      t.string :synonym

      t.timestamps
    end
  end
end
