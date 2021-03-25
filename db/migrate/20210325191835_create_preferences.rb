class CreatePreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :preferences do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :diet, null: false, foreign_key: true
      t.string :restriction

      t.timestamps
    end
  end
end
