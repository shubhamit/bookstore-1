class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :type_name
      t.text :description

      t.timestamps null: false
    end
  end
end
