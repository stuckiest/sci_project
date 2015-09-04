class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :grade
      t.boolean :prize
      t.string :notes
      t.belongs_to :owner
      t.timestamps null: false
    end
  end
end
