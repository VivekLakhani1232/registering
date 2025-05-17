const express = require('express');
const app = express();
const router = require('./routers/router')
require('dotenv').config();

app.use(express.json());
app.use('/api', router)

const PORT = process.env.PORT || 3000; 

app.listen(PORT , () => {
    console.log(`Server running on port ${PORT}`);
})