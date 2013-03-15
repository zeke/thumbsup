express  = require("express")

app = express()
app.use(express.logger())
app.use(express.bodyParser())

app.get "/", (req, res) ->

  res.send(200, "This is a page.")

app.post "/thumbnails", (req, res) ->

  res.send(200, req.body)

module.exports = app
