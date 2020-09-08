class CreateRecalls < ActiveRecord::Migration[6.0]
  def change
    create_table :recalls do |t|
      t.string :classification
      t.string :center_classification_date
      t.string :report_date
      t.string :postal_code
      t.string :termination_date
      t.string :recall_initiation_date
      t.string :recall_number
      t.string :city
      t.string :more_code_info
      t.string :event_id
      t.string :distribution_pattern
      t.string :openfda
      t.string :recalling_firm
      t.string :voluntary_mandated
      t.string :state
      t.string :reason_for_recall
      t.string :initial_firm_notification
      t.string :status
      t.string :product_type
      t.string :country
      t.string :product_description
      t.string :code_info
      t.string :address_1
      t.string :address_2
      t.string :product_quantity

      t.timestamps
    end
  end
end
