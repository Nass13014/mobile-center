require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "creating a Ticket" do
    visit tickets_url
    click_on "New Ticket"

    fill_in "Accompte", with: @ticket.accompte
    fill_in "Garantie", with: @ticket.garantie
    fill_in "Imei", with: @ticket.imei
    fill_in "Mail", with: @ticket.mail
    fill_in "Modele", with: @ticket.modele
    fill_in "Motdepass", with: @ticket.motdepass
    fill_in "Nom", with: @ticket.nom
    fill_in "Numero", with: @ticket.numero
    fill_in "Panne", with: @ticket.panne
    fill_in "Prenom", with: @ticket.prenom
    fill_in "Raisonsocial", with: @ticket.raisonSocial
    fill_in "Reduction", with: @ticket.reduction
    fill_in "Remarque", with: @ticket.remarque
    fill_in "Total", with: @ticket.total
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "updating a Ticket" do
    visit tickets_url
    click_on "Edit", match: :first

    fill_in "Accompte", with: @ticket.accompte
    fill_in "Garantie", with: @ticket.garantie
    fill_in "Imei", with: @ticket.imei
    fill_in "Mail", with: @ticket.mail
    fill_in "Modele", with: @ticket.modele
    fill_in "Motdepass", with: @ticket.motdepass
    fill_in "Nom", with: @ticket.nom
    fill_in "Numero", with: @ticket.numero
    fill_in "Panne", with: @ticket.panne
    fill_in "Prenom", with: @ticket.prenom
    fill_in "Raisonsocial", with: @ticket.raisonSocial
    fill_in "Reduction", with: @ticket.reduction
    fill_in "Remarque", with: @ticket.remarque
    fill_in "Total", with: @ticket.total
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket" do
    visit tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket was successfully destroyed"
  end
end
