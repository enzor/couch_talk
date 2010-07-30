class <%= name.camelize.pluralize %>Controller < ApplicationController
 
  def index
    @<%= name.downcase.pluralize %> = <%= name.capitalize %>.all
  end

  def show
    @<%= name.downcase %> = <%= name.capitalize %>.find(params[:id])
  end

  def new
    @<%= name.downcase %> = <%= name.capitalize %>.new
  end

  # GET /samples/1/edit
  def edit
    @<%= name.downcase %> = <%= name.capitalize %>.find(params[:id])
  end

  def create
    @<%= name.downcase %> = <%= name.capitalize %>.new(params[:<%= name.downcase %>])

    respond_to do |format|
      if @<%= name.downcase %>.save
        format.html { redirect_to(@<%= name.downcase %>, :notice => '<%= name.capitalize %> was successfully created.') }
        format.xml  { render :xml => @<%= name.downcase %>, :status => :created, :location => @<%= name.downcase %> }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @<%= name.downcase %>.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @<%= name.downcase %> = <%= name.capitalize %>.find(params[:id])

    respond_to do |format|
      if @<%= name.downcase %>.update_attributes(params[:sample])
        format.html { redirect_to(@<%= name.downcase %>, :notice => '<%= name.capitalize %> was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @<%= name.downcase %>.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  def destroy
    @<%= name.downcase %> = <%= name.capitalize %>.find(params[:id])
    @<%= name.downcase %>.destroy

    respond_to do |format|
      format.html { redirect_to(<%= name.downcase.pluralize %>_url) }
      format.xml  { head :ok }
    end
  end
  
end