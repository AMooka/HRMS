
class CreateEmployeeAppraisals < ActiveRecord::Migration[7.1]
  def change
    create_table :appraisals do |t|
      t.string :employee_name
      t.string :department
      t.date :date_of_appraisal
      t.text :goal_achievement
      t.text :skills_and_competencies
      t.text :strengths
      t.text :areas_for_improvement
      t.text :training_and_development_needs
      t.integer :overall_performance_rating
      t.text :additional_comments

      t.timestamps
    end
  end
end

