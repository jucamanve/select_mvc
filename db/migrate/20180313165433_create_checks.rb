class CreateChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :checks do |t|
      t.boolean :status
      t.references :profile, foreign_key: true
      t.references :requirement, foreign_key: true

      t.timestamps
    end
  end
end
