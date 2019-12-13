const express=require('express');
let router=express.Router();
let pool=require('../pool');

//获取体验数据
router.get("/getExperience",(req,res)=>{
    let sql="select * from experience";
    pool.query(sql,(result,err)=>{
        if(err) throw err;
        console.log("11")
        res.send({code:1,msg:"获取体验数据成功",result})
    })
})

module.exports=router;