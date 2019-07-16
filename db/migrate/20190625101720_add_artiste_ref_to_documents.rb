class AddArtisteRefToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents, :artiste, foreign_key: true
  end
end
