class CreateEmployeeEmpAppraisals < ActiveRecord::Migration[7.1]
  def change
    create_table :emp_appraisals do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.date :data_of_appraisal
      t.string :achievement
      t.string :skills
      t.string :strengths
      t.string :area_of_improvement
      t.string :overal_performance
      t.string :additional_comments

      t.timestamps
    end
  end
end
