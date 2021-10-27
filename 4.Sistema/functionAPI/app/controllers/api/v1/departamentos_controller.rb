class Api::V1::DepartamentosController < ApplicationController
	# GET /departamentos
	def index
		@departamentos = Departamento.all
		render json: @users
	end

	# GET /departamentos/:id
	def show
		@departamento = Departamento.find(params[:id])
		render json: @user
	end

	# POST /departamentos
	def create
		@departamento = Departamento.new(user_params)
		if @departamento.save
			render json: @departamento
		else
			render error: { error: "Não foi possível criar o departamento." }, status: 400
		end
	end

	# PUT /departamentos/:id
	def update
		@departamento = Departamento.find(params[:id])
		if @departamento
			@departamento.update(user_params)
			render json: { message: "Departamento atualizado." }, status: 200
		else
			render json: { error: "Não foi possível atualizar o departamento." }, status: 400
		end
	end

	# DELETE /departamentos/:id
	def destroy
		@departamento = User.find(params[:id])
		if @departamento
			@departamento.destroy
			render json: { message: "Departamento apagado." }, status: 200
		else
			render json: { error: "Não foi possível apagar o departamento." }, status: 400
		end
	end

	private

	def user_params
		params.require(:departamento)
	end
end
