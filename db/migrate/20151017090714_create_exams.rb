class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.datetime :date
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
