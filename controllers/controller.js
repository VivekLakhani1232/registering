const pool = require('../helpers/helper')

exports.getInstitute = async (req, res ) => {
try {
    let getData = await pool.query(`select * from "Institute_registration".institute_type it ;`);
    res.status(200).json({data : getData.rows})

} catch (error) {
    res.status(500).json(error)
}
}

exports.getDropdwonForSchool = async (req , res ) =>{
    try {
        let getDropDwon = await pool.query(`
with standerd_subject as (
select
	cc.id as category_id ,
	cc."name" as category_name ,
	s.id as standerd_id,
	s."name" as standerd_name ,
	array_agg(s2.name) as subject
from
	"Institute_registration".class_category cc
left join "Institute_registration".standers s on
	s.category_id = cc.id
left join "Institute_registration".subject s2 on
	s2.standerd_id = s.id
where
	s.name is not null
group by
	cc."name" ,
	s."name" ,
	cc.id ,
	s.id)
select
	category_id as id ,
	category_name as name ,
	jsonb_agg(jsonb_build_object(standerd_name , subject )) as standerd
from
	standerd_subject
group by
	category_name,
	category_id ;
`);

res.status(200).json({dropDwonForSchool : getDropDwon.rows})
        
    } catch (error) {
        res.status(500).json({error : "Something went wrong" })
    }
}

exports.addInstitute = async (req , res ) =>{
    try {
        const 
    { ragistration_name ,
      institute_id ,
      board_id ,
      medium ,
      class_category_id ,
      standers ,
      subject,
      colleges_id,
      degree_id,
      exma_id
        } = req.body ;

 if (!ragistration_name || !institute_id || !board_id) {
  return res.status(400).json({ error: "Required fields are missing" });
}

 const insertData = `INSERT INTO "Institute_registration".institue_registrations
( ragistration_name, institute_id, board_id, medium, class_category_id, standers, subject,colleges_id,degree_id,exma_id)
VALUES($1, $2, $3, $4, $5, $6, $7,$8, $9, $10);`;

 const {rows} = await pool.query(insertData , [
    ragistration_name ,
      institute_id ,
      board_id ,
      medium ,
      class_category_id ,
      standers ,
      subject,
      colleges_id,
      degree_id,
      exma_id
  ]);

  res.status(200).json({messgae : " Institute registration successfully"})

    } catch (error) {
        console.log('error :>> ', error);
        res.json(500).json({error : "Something went wrong. Please try again later."})
    }
}

