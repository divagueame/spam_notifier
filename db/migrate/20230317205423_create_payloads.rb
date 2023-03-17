class CreatePayloads < ActiveRecord::Migration[7.0]
  def change
    create_table :payloads do |t|
      t.string :RecordType
      t.string :TypeType
      t.integer :TypeCode
      t.string :Name
      t.string :Tag
      t.string :MessageStream
      t.text :Description
      t.string :Email
      t.string :From
      t.datetime :BouncedAt

      t.timestamps
    end
  end
end
