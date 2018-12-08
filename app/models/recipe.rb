class Recipe
    include HTTParty
    ENV["FOOD2FORK_KEY"] = '2abc0cd58fd658053aaca17e326a3dbe'
    base_uri 'http://food2fork.com/api'
    default_params key: ENV["FOOD2FORK_KEY"]
    format :json
   
    def self.for term
    get("/search", query: { q: term})["recipes"]
    end
   end
   #    ENV["FOOD2FORK_KEY"] = 'e8294eb5c936fc4d86d00bc328dcab8b'
   #ENV["FOOD2FORK_KEY"] = '2abc0cd58fd658053aaca17e326a3dbe'
   #639d41c393d95085fd8a8721017a9361 