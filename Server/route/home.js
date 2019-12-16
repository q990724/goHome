const express = require("express");
let router = express.Router();
let pool = require("../pool");

//获取城市列表
router.get("/getCity", (req, res) => {
  // let city = req.query.city;
  let sql = "select * from cities";
  pool.query(sql, (err, result) => {
    console.log(result);
    res.send({ code: 200, msg: "获取成功", result });
  })
})
// 获取所有房源
router.get("/getHome", (req, res) => {
  let sql = "select * from homestay";
  pool.query(sql, (err, result) => {
    console.log(result);
    // res.send(result)
    let ids = {};

    if (!Array.isArray(result)) return;
    result.forEach((ele,i) => {
      if (ids[ele.landlord_id] === undefined) {
        ids[ele.landlord_id] = [];
      }
      ids[ele.landlord_id].push(i);
    })
    console.log(ids);
    let funs = [];
    for(var i in ids){
      funs.push(new Promise((resolve,reject)=>{
        pool.query("select * from landlord where landlord_id = ?", [i],(e,r)=>{
          if(e)throw e;
          resolve(r[0])
        })
      }))
    }
    Promise.all(funs).then(r=>{
      console.log(r);
      for(var key in ids){ //遍历 ids{ 1:[0,2]  }
        for(var index of ids[key]){ //遍历 1 内的数组
          // 
          // 每遍历到一个,拿到的是result的下标
          r.forEach(ele=>{
            if(ele.landlord_id == key){
              result[index].landlord_msg = ele;
            }
          })
        }
      }
      res.send({code: 200, msg: "查询成功", result: result});
    })
    
  })
})

module.exports = router;
