class CreateCriticisms < ActiveRecord::Migration
  def change
    create_table :criticisms do |t|
      t.string :content
      t.integer :course_id

      t.timestamps
    end
  end
end
