class GroupsController < InheritedResources::Base
  respond_to :json

  def index
    if params.has_key? :parent_id
      @items = Group.find(params[:parent_id]).children rescue []
    else
      @items = Group.roots
    end
  end
end
