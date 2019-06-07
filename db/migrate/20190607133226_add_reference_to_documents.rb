class AddReferenceToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents, :participation, foreign_key: true
  end
end
