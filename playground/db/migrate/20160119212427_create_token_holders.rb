class CreateTokenHolders < ActiveRecord::Migration[5.0]
  def change
    create_table :token_holders do |t|
      t.string :name
      t.string :token

      t.timestamps
    end
  end
end
