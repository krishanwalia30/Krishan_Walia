const PORT = process.env.PORT || 5000;
const express = require('express');

const mongoose = require('mongoose');

// Connection to the database
const connectionUrl = 'mongodb+srv://krishanw30:test@cluster0.yc13fed.mongodb.net/?retryWrites=true&w=majority';
mongoose.connect(connectionUrl).then(function () {
    console.log('Connected to Database');
})

const app = express();

app.get('/', (req, res) => {
    res.json({
        "message": "success",
    });
});
app.listen(PORT, () => {
    console.log('Connected to the server')
});

// Schema for the subscribers
const subscriberSchema = new mongoose.Schema({
    id: {
        type: String,
        unique: true,
        required: true
    },
})

// Creating a Model as per the Schema
const Subscribers = model('Subscribers', subscriberSchema);

// Adding the subscriber 
app.post("/add", async function (req, res) {
    // await Subscribers.deleteOne({ id: req.body.id });

    const newSubscriber = new Subscribers({
        id: req.body.id,
    });
    await newSubscriber.save();

    const response = { message: "New Note Created! " + `id: ${req.body.id}` };
    res.json(response);
});