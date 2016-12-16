class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :usu_nombre
      t.string :usu_apellido
      t.string :usu_email
      t.string :password_digest
      t.timestamps
    end
  end
end
