const express = require("express");
var http = require("http");
const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);
const mongoose = require("mongoose");
var io = require("socket.io")(server);


// middleware
app.use(express.json());

// Connect to our MongoDB
const DB = 'mongodb+srv://keerthana:keerthana@cluster0.7eut2c4.mongodb.net/?retryWrites=true&w=majority';

mongoose.connect(DB).then(() => {
    console.log('Connection Succesful!');
}).catch((e) => {
    console.log(e);
})

server.listen(port, "0.0.0.0", () =>{
    console.log('server started and running on port '+ port);
})