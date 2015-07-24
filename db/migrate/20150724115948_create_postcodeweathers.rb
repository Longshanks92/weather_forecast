class CreatePostcodeweathers < ActiveRecord::Migration
  def change
    create_table :postcodeweathers do |t|
      t.string :postcode

      t.timestamps null: false
    end
  end
end
