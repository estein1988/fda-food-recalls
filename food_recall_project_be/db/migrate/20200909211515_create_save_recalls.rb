class CreateSaveRecalls < ActiveRecord::Migration[6.0]
  def change
    create_table :save_recalls do |t|
      t.references :user, null: false, foreign_key: true
      t.references :recall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
