class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.date :due_date, null: false
      t.belongs_to :book
    end
  end
end
