class CreateTargetPublicEngagements < ActiveRecord::Migration
  def change
    create_table :target_public_engagements do |t|
      t.references :target_public, index: true, foreign_key: true, null: false
      t.references :engagement, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
