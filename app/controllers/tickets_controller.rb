class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    @tickets = Ticket.all
  end


  # def bon_reparation
   
  #   respond_to do |format|
  #     format.html
  #     format.pdf do
       
  #       render :pdf => "TicketReparation", template: "tickets/bon_reparation.html.erb",formats: :HTML, 
  #       encoding: 'utf8'
  #     end
  #   end
  # end

  
  # GET /tickets/1 or /tickets/1.json Etiquette sur téléphone

  def show
    respond_to do |format|
      format.html
      format.pdf do
       
        render :pdf => "TicketReparation",
         template: "tickets/ticket.html.erb",
        layout: "pdf",
        page_size: 'A4',
        formats: :HTML, 
        encoding: 'utf8'
      end

  

   
    end
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets or /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: "Ticket crée avec succès." }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: "Ticket crée avec succès" }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1 or /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: "Ticket Supprimé." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:raisonSocial, :nom, :prenom, :numero, :mail, :modele, :imei, :motdepass, :panne, :remarque, :total, :accompte, :reduction, :garantie, :statut, :paye)
    end
end
