const express = require('express');
const router = express.Router();
const controller = require('../controllers/controller');

router.get('/getInstitute', controller.getInstitute);
router.get('/schoolDropDwon',controller.getDropdwonForSchool);
router.post('/addInstitute', controller.addInstitute);

module.exports = router;