require_relative "api_caller"

call_the_api = require(./app/api_caller).call_the_api
error_handler = require(./api_caller).json_parse



