class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name, index: { unique: true }, null: false

      t.timestamps null: false
    end
  end
end
