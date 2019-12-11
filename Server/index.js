const express = require('express');
var app = express();
const session = require("express-session");
const bodyParser = require('body-parser');
const cors=require("cors");

var user = require("./route/user");

app.use(cors({
  origin:['http://localhost:8080',"http://127.0.0.1:8080",'http://localhost:8081',"http://127.0.0.1:8081"],
  credentials:true
}))

app.use(session({
  secret:"gohome",
  resave:true,         //请求更新数据 
  saveUninitialized:true//保存初始数据
})); 

app.use(bodyParser.json({ limit: '50mb' }));
app.use(bodyParser.urlencoded({ limit: '50mb', extended: true }));

app.use(express.static('public'));
app.listen(5050,()=>{
	console.log("启动成功");
	console.log("启动时间：" + new Date().toLocaleString());
});

app.use("/user",user);