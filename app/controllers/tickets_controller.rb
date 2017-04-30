class TicketsController < ApplicationController
  def index

  end

  def new
    @movie = Movie.find(params[:movie_id])
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @ticket_arr = []
    @ticket_arr = params.permit(ticket:[])
    $i = 0
    until $i > @ticket_arr["ticket"].size do
      @ticket = Ticket.new
      @ticket.tickMov = @movie.movName
      @ticket.tickRound = @movie.movRound
      @ticket.tickSeat = @ticket_arr["ticket"][$i]
      @ticket.save
      $i += 1
    end

  end

  def edit

  end

  def update

  end

  def show
    @ticket = Movie.find(params[:ticket_id])
  end

  def destroy

  end

  private
    def movie_params
      params.require(:movie).permit(:movName, :movRound)
    end

    def ticket_params
      params.require(:ticket).permit(:tickMov, :tickRound, :tickDate, :tickSeat, :tickPrice)
    end
end
