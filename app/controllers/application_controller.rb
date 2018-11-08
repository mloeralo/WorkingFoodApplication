class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
include SessionsHelper
def hello
  render html: "hello, world, this is our fridge!"
end

end
