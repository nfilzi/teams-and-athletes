class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :kind

      t.references :team, foreign_key: true

      t.timestamps
    end

    add_reference :users, :trainer, foreign_key: { to_table: :users }
  end
end
