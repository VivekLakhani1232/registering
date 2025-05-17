const pool = require('../helpers/helper')

exports.getInstitute = async (req, res ) => {
try {
    let getData = await pool.query(`select * from "Institute_registration".institute_type it ;`);
    res.status(200).json({data : getData.rows})

} catch (error) {
    res.status(500).json(error)
}
}