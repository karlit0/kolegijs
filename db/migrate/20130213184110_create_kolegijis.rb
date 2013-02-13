class CreateKolegijis < ActiveRecord::Migration
  def change
    create_table :kolegijis do |t|
      t.string :ime
      t.integer :ocjena
      t.string :komentar

      t.timestamps
    end
  end
end
