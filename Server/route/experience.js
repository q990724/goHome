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



// var x=0;
// var foo={
//     x:1,
//     bar:function(){
//         console.log(this.x);//1
//         var that=this;
//         return function(){
//             console.log(this.x)
//             console.log(that.x)
//         }
//     }
// }
// foo.bar();//1
// foo.bar()()//1   
