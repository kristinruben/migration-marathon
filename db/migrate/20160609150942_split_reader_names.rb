class SplitReaderNames < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.all.each do |reader|
      names_array = reader.full_name.split(" ")
      reader.first_name = names_array.first
      reader.last_name = names_array.last
      reader.save
    end

    remove_column :readers, :full_name
  end

  def down
    add_column :readers, :full_name, :string

    Reader.all.each do |reader|
      reader.full_name = reader.first_name + " " + reader.last_name
      reader.save
    end

    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
