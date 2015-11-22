class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.string :description
      t.boolean :sunday_morning
      t.boolean :sunday_afternoon
      t.boolean :sunday_evening
      t.boolean :monday_morning
      t.boolean :monday_afternoon
      t.boolean :monday_evening
      t.boolean :tuesday_morning
      t.boolean :tuesday_afternoon
      t.boolean :tuesday_evening
      t.boolean :wednesday_morning
      t.boolean :wednesday_afternoon
      t.boolean :wednesday_evening
      t.boolean :thursday_morning
      t.boolean :thursday_afternoon
      t.boolean :thursday_evening
      t.boolean :friday_morning
      t.boolean :friday_afternoon
      t.boolean :friday_evening
      t.boolean :saturday_morning
      t.boolean :saturday_afternoon
      t.boolean :saturday_evening
      t.string :website
      t.string :price_range
      t.integer :neighborhood_id
      t.integer :minutes_from_ada
      t.string :method
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps null: false
    end
  end
end
