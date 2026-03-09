class AddDateAndCompanyIdToActivities < ActiveRecord::Migration[8.1]
  def change
    add_column :activities, :date, :date
    add_column :activities, :company_id, :integer
  end
end
