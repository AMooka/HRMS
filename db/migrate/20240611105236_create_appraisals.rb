class CreateAppraisals < ActiveRecord::Migration[7.1]
  def change
    create_table :appraisals do |t|

      t.timestamps
    end
  end
end
