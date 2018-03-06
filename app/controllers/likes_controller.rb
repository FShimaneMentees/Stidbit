class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, tidbit_id: params[:tidbit_id])
    @tidbit = Tidbit.find(params[:tidbit_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, tidbit_id: params[:tidbit_id])
    like.destroy
    @tidbit = Tidbit.find(params[:tidbit_id])
  end
end
