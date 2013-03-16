express  = require("express")
_        = require("underscore")

app = express()
app.use(express.logger())
app.use(express.bodyParser())

app.get "/", (req, res) ->

  res.send(200, "This is a page.")

app.post "/thumbnails", (req, res) ->

  response = _.map(req.body, (item) ->
    _.extend(item, {'thumbnail': 'some-url'})
  )

  res.send(200, response)

module.exports = app
