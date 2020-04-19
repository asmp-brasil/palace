# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
# Create Patient entity migration
class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :sex
      t.string :civil_state
      t.integer :children
      t.text :drug_usage
      t.string :previous_treatment
      t.string :cirurgies
      t.string :comorbidities
      t.string :profession
      t.string :workplace
      t.string :crm
      t.string :status
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
# rubocop:enable all
