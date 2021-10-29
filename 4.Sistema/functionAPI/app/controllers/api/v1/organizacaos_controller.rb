class Api::V1::OrganizacaosController < ApplicationController

	# GET /organizacaos
	def index
		@organizacaos = Organizacao.all
		render json: @organizacaos
	end

	# GET /organizacaos/:id
	def show
		@organizacao = Organizacao.find(params[:id])
		render json: @organizacao
	end

	# POST /organizacaos
	def create
		@organizacao = Organizacao.new(user_params)
		if @organizacao.save
			render json: @organizacao
		else
			render error: { error: "Não foi possível criar a organização." }, status: 400
		end
	end

	# PUT /organizacaos/:id
	def update
		@organizacao = Organizacao.find(params[:id])
		if @organizacao
			@organizacao.update(user_params)
			render json: { message: "Organização atualizada." }, status: 200
		else
			render json: { error: "Não foi possível atualizar as organizações." }, status: 400
		end
	end

	# DELETE /organizacaos/:id
	def destroy
		@organizacao = Organizacao.find(params[:id])
		if @organizacao
			@organizacao.destroy
			render json: { message: "Organização apagada." }, status: 200
		else
			render json: { error: "Não foi possível apagar a organização." }, status: 400
		end
	end

	private

	def user_params
		params.require(:organizacao)
	end
end
