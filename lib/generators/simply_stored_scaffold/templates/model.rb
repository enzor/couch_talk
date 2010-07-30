class <%= name.camelize %>
  include SimplyStored::Couch
  
  <%- for attribute in attributes -%>
    property :<%= attribute[0].downcase %> <%= typize(attribute[1]) %> 
  <%- end -%>
end
