class CreateCityweathers < ActiveRecord::Migration
  def change
    create_table :cityweathers do |t|
      t.string :city

      t.timestamps null: false
    end
  end
end
