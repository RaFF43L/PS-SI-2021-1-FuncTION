class Api::V1::ChamadosController < ApplicationController

	# GET /chamados
	def index
		@chamados = Chamado.all
		render json: @chamados
	end

	# GET /chamados/:id
	def show
		@chamado = Chamado.find(params[:id])
		render json: @chamado
	end

	# POST /chamados
	def create
		@chamado = Chamado.new(user_params)
		if @chamado.save
			render json: @chamado
		else
			render error: { error: "Não foi possível criar o chamado." }, status: 400
		end
	end

	# PUT /chamados/:id
	def update
		@chamado = Chamado.find(params[:id])
		if @chamado
			@chamado.update(user_params)
			render json: { message: "Chamado atualizado." }, status: 200
		else
			render json: { error: "Não foi possível atualizar o chamado." }, status: 400
		end
	end

	# DELETE /chamados/:id
	def destroy
		@chamado = User.find(params[:id])
		if @chamado
			@chamado.destroy
			render json: { message: "Chamado apagado." }, status: 200
		else
			render json: { error: "Não foi possível apagar o chamado." }, status: 400
		end
	end

	private

	def user_params
		params.require(:chamado)
	end
end
