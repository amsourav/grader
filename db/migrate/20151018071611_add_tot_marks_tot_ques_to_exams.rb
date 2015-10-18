class AddTotMarksTotQuesToExams < ActiveRecord::Migration
  def change
    add_column :exams, :tot_marks, :integer
    add_column :exams, :tot_ques, :integer
  end
end
