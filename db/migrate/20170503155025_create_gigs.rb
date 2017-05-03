class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :title
      t.text :context
      t.references :seller, index: true

      t.timestamps
    end
  end
end
