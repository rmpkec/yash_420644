class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new
    @ticket.name = params[:name]
    @ticket.source = params[:source]
    @ticket.note_id = params[:note_id]
    @ticket.score = params[:score]
    @ticket.last_received_at = params[:last_received_at]
    @ticket.schema_less = params[:schema_less]
    @ticket.closed = params[:closed]

    if @ticket.save
      redirect_to "/tickets", :notice => "Ticket created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])

    @ticket.name = params[:name]
    @ticket.source = params[:source]
    @ticket.note_id = params[:note_id]
    @ticket.score = params[:score]
    @ticket.last_received_at = params[:last_received_at]
    @ticket.schema_less = params[:schema_less]
    @ticket.closed = params[:closed]

    if @ticket.save
      redirect_to "/tickets", :notice => "Ticket updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])

    @ticket.destroy

    redirect_to "/tickets", :notice => "Ticket deleted."
  end
end
