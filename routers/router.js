const express = require('express');
const router = express.Router();
const controller = require('../controllers/controller');

router.get('/getInstitute', controller.getInstitute);

module.exports = router;