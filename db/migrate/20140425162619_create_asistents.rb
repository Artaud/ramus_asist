class CreateAsistents < ActiveRecord::Migration
  def change
    create_table :asistents do |t|
      t.string :jmeno
      t.string :prijmeni
      t.string :email
      t.integer :telefon

      t.timestamps
    end
  end
end
