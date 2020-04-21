# frozen_string_literal: true

# Create Medic entity migration
class CreateMedics < ActiveRecord::Migration[6.0]
  def change
    create_table :medics do |t|
      t.string :name
      t.string :profession
      t.string :crm
      t.string :phone
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
