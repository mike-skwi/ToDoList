class CreateAdditionals < ActiveRecord::Migration[5.1]
  def change
    create_table :additionals do |t|
      t.string :item

      t.timestamps
    end
  end
end
