const db = require('../db')

// 分类页面
module.exports.catelist = (req, res) => {
  db.query(`SELECT *
  FROM cates
  WHERE cate_pid IS NUll`, (error, result) => {
    if (error) throw error
    result.forEach(function (val, j, result) {
      db.query(`SELECT * FROM cates WHERE cate_pid = ${result[j].cate_id}`, (error, nResult) => {
        if (error) throw error
        result[j].childcate = nResult
        nResult.forEach(function (val, k, nResult) {
          db.query(`SELECT * FROM goods WHERE cate_id = ${nResult[k].cate_id}`, (error, nNResult) => {
            if (error) throw error
            nResult[k].childgood = nNResult
            if (k >= nResult.length - 1 && j >= result.length - 1) {
              res.json({
                "data": result,
                "meta": {
                  "msg": "获取成功",
                  "status": 200
                }
              })
            }
          })
        })
      })
    })

  })
}