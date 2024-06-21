class CreateAdminEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :position
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
