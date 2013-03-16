express  = require("express")
_        = require("underscore")

app = express()
app.use(express.logger())
app.use(express.bodyParser())

app.get "/", (req, res) ->

  res.send(200, "This is a page.")

app.post "/thumbnails", (req, res) ->

  response = _.map(req.body, (item) ->
    _.extend(item, {'thumbnail': 'https://s3.aws.amazon.com/thumbsup/sha1.png'})
  )

  res.send(200, response)

module.exports = app
