class CreateQpaperspecs < ActiveRecord::Migration
  def change
    create_table :qpaperspecs do |t|
      t.text :qname
      t.integer :exam_id

      t.timestamps null: false
    end
  end
end
