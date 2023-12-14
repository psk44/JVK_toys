def index
  @query = params[:query]
  @toy_type_id = params[:toy_type_id]

  @toys = Toy.all
  @toys = @toys.where("name LIKE ?", "%#{@query}%") if @query.present?
  @toys = @toys.where(toy_type_id: @toy_type_id) if @toy_type_id.present?
end

