lapis = require "lapis"

Episodes = require "models.episodes"

class F5 extends lapis.Application
    @enable "etlua"

    [index: "/"]: =>
        -- figure out which episodes to display

    [post: "/post/:id"]: =>
        -- now figure out what to display
