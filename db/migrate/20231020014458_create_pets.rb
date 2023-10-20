class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :level, default: 1
      t.integer :exp, default:0, limit: 99
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
