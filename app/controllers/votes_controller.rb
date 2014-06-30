class VotesController < ApplicationController
  before_filter :fetch_vote, only: :destroy

  def create
    authorize Vote
    question = Question.friendly.find(params[:question_id])
    if current_user
      vote = QuestionVoter.new(question, current_user).execute!
    else
      vote = Vote.create(question: question, ip_address: request.remote_ip)

      render json: { message: "Duplicate IP" }, status: 422 and return unless vote.valid?

      session[:votes] = {} unless session[:votes]
      session[:votes][question.id] = vote.id
    end
    render json: vote
  end

  def destroy
    authorize @vote
    @vote.destroy!
    render json: @vote
  end

  private

  def fetch_vote
    @vote = Vote.find(params[:id])
  end
end
