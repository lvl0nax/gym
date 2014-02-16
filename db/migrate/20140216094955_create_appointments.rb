class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :seminar
      t.string :name
      t.string :surname
      t.string :phone
      t.string :email
      t.text :comment

      t.timestamps
    end
    add_index :appointments, :seminar_id
  end
end
