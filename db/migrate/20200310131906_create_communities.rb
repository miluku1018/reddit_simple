class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :url
      t.text :rules
      t.integer :total_members
      t.string :summary
      t.bigint :account_id

      t.timestamps
    end
  end
end
