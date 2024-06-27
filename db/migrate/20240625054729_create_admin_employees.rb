class CreateAdminEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.references :department, null: false, foreign_key: true
      t.string :position

      t.timestamps
    end
  end
end
