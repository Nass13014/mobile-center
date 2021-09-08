json.extract! ticket, :id, :raisonSocial, :nom, :prenom, :numero, :mail, :modele, :imei, :motdepass, :panne, :remarque, :total, :accompte, :reduction, :garantie, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
