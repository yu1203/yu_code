class CreatePraises < ActiveRecord::Migration
  def change
    create_table :praises do |t|
      t.string :content
      t.integer :course_id

      t.timestamps
    end
  end
end
