class SimplyStoredScaffoldGenerator < Rails::Generator::Base
  attr_accessor :name, :attributes
  
  def initialize(runtime_args, runtime_options = {})
    super
    usage if @args.empty?
    
    @name = @args.first
    @attributes = []
    
    @args[1..-1].each do |arg|
      if arg.include?(":")
        @attributes << [ arg.split(":")[0] , arg.split(":")[1] ]
      end
    end
    
  end
   
  def manifest
    record do |m|
      m.template('controller.rb', "app/controllers/#{name.downcase.pluralize}_controller.rb")
      m.template('helper.rb',"app/helpers/#{name.downcase}_helper.rb" )
      m.template('model.rb',"app/models/#{name.downcase}.rb")
      m.directory("app/views/#{name.downcase.pluralize}")
      m.template('views/index.html.erb',"app/views/#{name.downcase.pluralize}/index.html.erb")
      m.template('views/new.html.erb',"app/views/#{name.downcase.pluralize}/new.html.erb")
      m.template('views/edit.html.erb',"app/views/#{name.downcase.pluralize}/edit.html.erb")
      m.template('views/_form.html.erb',"app/views/#{name.downcase.pluralize}/_form.html.erb")
      m.template("views/show.html.erb", "app/views/#{name.downcase.pluralize}/show.html.erb")
      m.route_resources name.downcase.pluralize
    end
  end
  
  def render_partial
      "<%= render :partial => 'form' %>"
  end
  
  def typize(type)
    case type
      when "boolean"              then ", :type => :#{type.downcase}"
      when "time","datetime"      then ", :type => #{type.camelize}"
    else
      nil
    end
  end
  
  
  ##
  ## find_field - actually a copy from the rails generator class.
  ## i needed it here since the Rails::Generator depends from activerecord. 
  ##
  
 def find_field(type)
     case type
       when "integer", "float", "decimal" then :text_field
       when "time"                        then :time_select
       when "datetime","timestamp"        then :datetime_select
       when "date"                        then :date_select
       when "string"                      then :text_field
       when "text"                        then :text_area
       when "boolean"                     then :check_box
     else
         :text_field
     end      
  end
  
  
end