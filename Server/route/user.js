const express = require("express");
var router = express.Router();
var pool = require("../pool");

router.post("/login",(req,res) => {
  let uname = req.body.uname;
  let upwd = req.body.upwd;

  let sql = "select * from users where uname=? and upwd=?";
  pool.query(sql,[uname,upwd],(err,result) => {
    if(err) {
      res.send({code : 500 , msg : "查询出错！Error" , err: err});
    }else{
      if(result.length > 0){
        res.send({code : 200 , msg : "登录成功" , result : result[0]});
      }else{
        res.send({code : 300 , msg : "账号或密码错误"});
      }
    }
  });
  
});

module.exports = router;