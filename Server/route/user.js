const express = require("express");
const nodemailer = require("nodemailer");
var router = express.Router();
var pool = require("../pool");

//配置发件人邮箱信息
var transporter = nodemailer.createTransport({//邮件传输
  host: "smtp.163.com", //qq smtp服务器地址
  secureConnection: false, //是否使用安全连接，对https协议的
  port: 465, //qq邮件服务所占用的端口
  auth: {
     user: "bigfacecat0724@163.com",//开启SMTP的邮箱，有用发送邮件
     pass: "cfy990724"//授权码
  }
});


//登录
router.post("/login",(req,res) => {
  let uname = req.body.uname;
  let upwd = req.body.upwd;

  let sql = "select * from users where uname=? and upwd=?";
  pool.query(sql,[uname,upwd],(err,result) => {
    if(err) {
      res.send({code : 500 , msg : "查询出错！Error" , err: err});
    }else{
      if(result.length > 0){
        req.session.uid = result[0].uid;
        res.send({code : 200 , msg : "登录成功" , result : result[0]});
      }else{
        res.send({code : 300 , msg : "账号或密码错误"});
      }
    }
  });
  
});

//注册
router.post("/register",(req,res) => {
  let uname = req.body.uname;
  let upwd = req.body.upwd;
  let email = req.body.email;
  let email_text = req.body.email_text;
  console.log(email_text,req.session.yanzhengma);
  if(email_text != req.session.yanzhengma){
    res.send({code : 302 , msg : "验证码不正确"});
    return;
  }

  let sql = "insert into users (uid,uname,upwd,email) values(null,?,?,?)";
  pool.query(sql,[uname,upwd,email],(err,result) => {
    if(err){
      res.send({code : 500 , msg : "Sql出错"});
    }else if(result.affectedRows > 0){
      res.send({code : 200 , msg : "注册成功！"});
    }else{
      res.send({code : 301 , msg : "注册失败！"});
    }
  });

});

//发送验证码
router.post("/verification",(req,res) => {
  var email = req.body.email;
  var code = "";
   while (code.length < 5) {
      code += Math.floor(Math.random() * 10);
   }
   var mailOption = {
      from: "bigfacecat0724@163.com",
      to: email,//收件人
      subject: "GoHome验证码",//纯文本
      html: "<h1>欢迎注册GoHome，您本次的注册验证码为：" + code + " </h1>"
   };


   transporter.sendMail(mailOption, function (error, info) {
      if (error) {
         res.send({code : 500 , msg : "服务器发送出错"});
        //  return console.info(error);
      } else {
         req.session.yanzhengma = code;
         res.send({code : 200 , msg : "发送成功"});
      }
   })
});


//检测用户是否登录
router.get("/checkLogin",(req,res) => {
  if(!req.session.uid){
    res.send({code : 301, msg : "未登录!"});
  }else{
    res.send({code : 200, msg : "已登录!"});
  }
})
module.exports = router;