class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :course_code
      t.string :name
      t.integer :credit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
