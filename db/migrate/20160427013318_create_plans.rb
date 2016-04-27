class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.text :body
      t.string :tools
      t.string :tags

      t.timestamps null: false
    end
  end
end
