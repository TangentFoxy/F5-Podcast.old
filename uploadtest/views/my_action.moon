import Widget from require "lapis.html"

class MyForm extends Widget
  content: =>
    form {
      action: "/my_action"
      method: "POST"
      enctype: "multipart/form-data"
    }, ->
      input type: "file", name: "uploaded_file"
      input type: "submit"
