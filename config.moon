config = require "lapis.config"
import sql_password, session_secret from require "secret"

config "development", ->
    port 8080
    secret "podcast"
    session_name "podcast_dev"
    num_workers 1 --only one needed for development testing (in theory..)
    code_cache "off" --so changes are immediate
    measure_performance true --for potentially profiling and optimzing
    postgres ->
        host "127.0.0.1"
        user "postgres"
        password sql_password
        database "podcast_dev"

config "production", ->
    port 80
    secret session_secret
    session_name "podcast" --TODO figure out if this should be changed
    num_workers 3 --I'm copying this shit from Fake.Net
    code_cache "on"
    measure_performance false
    postgres ->
        host "127.0.0.1"
        user "postgres"
        password sql_password
        database "podcast" --TODO make this a thing people change?
