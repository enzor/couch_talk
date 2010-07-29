class SimplyStoredScaffoldGenerator < Rails::Generator::NamedBase
   
  def manifest
    record do |m|
      m.template('controller.rb', "app/controllers/#{name.downcase}_controller.rb")
      m.template('helper.rb',"app/helpers/#{name.downcase}_helper.rb" )
      m.template('model.rb',"app/models/#{name.downcase}.rb")
      m.directory("app/views/#{name.downcase.pluralize}")
      m.template('index.html.erb',"app/views/#{name.downcase.pluralize}/index.html.erb")
      m.template('new.html.erb',"app/views/#{name.downcase.pluralize}/new.html.erb")
      m.template('edit.html.erb',"app/views/#{name.downcase.pluralize}/edit.html.erb")
      m.template('_form.html.erb',"app/views/#{name.downcase.pluralize}/_form.html.erb")
      m.template("show.html.erb", "app/views/#{name.downcase.pluralize}/show.html.erb")
    end
  end
  
  def render_partial
      "<%= render :partial => 'form' %>"
  end
  
end