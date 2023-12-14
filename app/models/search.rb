class Search

  def initialize(query, options = {})
    @query = query
    @category_id = options[:category_id]
    @manufacturer_id = options[:manufacturer_id]
  end

  def results
    toys = Toy.all
    if @query.present?
      toys = toys.where("name LIKE ?", "%#{@query}%")
    end
    toys
    if @toy_type_id.present?
      toys = toys.where(toy_type_id: @toy_type_id)    
    end
    toys
  end
 
end
