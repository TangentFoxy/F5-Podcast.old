lapis = require "lapis"

class extends lapis.Application
  "/my_action": =>
    if file = @params.uploaded_file
      handle = io.open(file.filename, "w")
      handle.write(handle, file.content)
      handle.close(handle)
      --shit = ""
      --for k,v in pairs file
          --print k
          --shit = shit .. "\n" .. k
      "Uploaded #{file.filename}, #{#file.content}bytes"
      --shit
    else
      render: "my_action"
