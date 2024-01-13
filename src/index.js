const path = require("path");
const express = require("express");
const morgan = require("morgan");
const hbs = require("express-handlebars");
const exp = require("constants");
const app = express();
const port = 3000;
const route = require("./routes");

app.use(express.static(path.join(__dirname, "public")));
app.use(morgan("combined"));

app.engine("handlebars", hbs.engine());
app.set("view engine", "handlebars");
app.set("views", path.join(__dirname, "resources\\views"));

// Routes
route(app);

app.listen(port);

console.log(port);
