class Api::V1::UsuariosController < ApplicationController

	# GET /usuarios
	def index
		@usuarios = Usuario.all
		render json: @usuarios
	end

	# GET /usuarios/:id
	def show
		@usuario = Usuario.find(params[:id])
		render json: @usuario
	end

	# POST /usuarios
	def create
		@usuario = Usuario.new(user_params)
		if @usuario.save
			render json: @usuario
		else
			render error: { error: "Não foi possível criar o usuario." }, status: 400
		end
	end

	# PUT /usuarios/:id
	def update
		@usuario = Usuario.find(params[:id])
		if @usuario
			@usuario.update(user_params)
			render json: { message: "Usuario atualizado." }, status: 200
		else
			render json: { error: "Não foi possível atualizar o usuario." }, status: 400
		end
	end

	# DELETE /usuarios/:id
	def destroy
		@usuario = Usuario.find(params[:id])
		if @usuario
			@usuario.destroy
			render json: { message: "Usuario apagado." }, status: 200
		else
			render json: { error: "Não foi possível apagar o usuario." }, status: 400
		end
	end

	private

	def user_params
		params.require(:usuario)
	end
end
