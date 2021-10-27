class Api::V1::CategoriasController < ApplicationController
	
	# GET /categorias
	def index
		@categorias = Categoria.all
		render json: @users
	end

	# GET /categorias/:id
	def show
		@categoria = Categoria.find(params[:id])
		render json: @user
	end

	# POST /categorias
	def create
		@categoria = Categoria.new(user_params)
		if @categoria.save
			render json: @categoria
		else
			render error: { error: "Não foi possível criar a categoria." }, status: 400
		end
	end

	# PUT /categorias/:id
	def update
		@categoria = Categoria.find(params[:id])
		if @categoria
			@categoria.update(user_params)
			render json: { message: "Categoria atualizada." }, status: 200
		else
			render json: { error: "Não foi possível atualizar a categoria." }, status: 400
		end
	end

	# DELETE /categorias/:id
	def destroy
		@categoria = User.find(params[:id])
		if @categoria
			@categoria.destroy
			render json: { message: "Categoria apagada." }, status: 200
		else
			render json: { error: "Não foi possível apagar a categoria" }, status: 400
		end
	end

	private

	def user_params
		params.require(:categoria)
	end
end
