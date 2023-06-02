const PORT = process.env.PORT || 5000;
const express = require('express');

const mongoose = require('mongoose');
const app = express();


const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Schema for the subscribers
const subscriberSchema = new mongoose.Schema({
    emailid: {
        type: String,
        // unique: true
        index: true,
        unique: true,
        required: true,
        sparse: true,

    },
})

// Creating a Model as per the Schema
const Subscribers = mongoose.model('Subscribers', subscriberSchema);

// Connection to the database
const connectionUrl = 'mongodb+srv://krishanw30:test@cluster0.yc13fed.mongodb.net/?retryWrites=true&w=majority';

mongoose.connect(connectionUrl).then(function () {

    // As the connection is successfull then only the APIs would be working

    app.get("/", function (req, res) {
        const response = { statuscode: res.statusCode, message: "API Works!" };
        res.json(response);
    });


    // Adding Subscriber API
    app.post("/add", async function (req, res) {
        // await Subscribers.deleteOne({ id: req.body.id });

        const newSubscriber = await new Subscribers({
            emailid: req.body.emailid,
        });

        await newSubscriber.save();

        const response = { message: "New Subscriber Added" + `: ${req.body.emailid}` };
        res.json(response);
    });

    console.log('Connected to Database');
})



app.listen(PORT, () => {
    console.log('Connected to the server')
});


