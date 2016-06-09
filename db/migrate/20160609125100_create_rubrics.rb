class CreateRubrics < ActiveRecord::Migration
  def change
    create_table :rubrics do |t|

      t.string :rubric_name
      t.string :rubric_description
      t.string :rubric_avatar

      t.timestamps null: false
    end
  end
end
