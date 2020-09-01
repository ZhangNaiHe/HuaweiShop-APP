const db = require('../db')

// 商品详情
module.exports.goodDetail = (req, res) => {
  db.query(`SELECT *
  FROM goods
  WHERE id = ${req.params.good_id}`, (error, result) => {
    if (error) throw error
    console.log(result[0].good_color)
    result[0].good_color = result[0].good_color.split(',')
    result[0].good_edition = result[0].good_edition.split(',')
    result[0].good_set = result[0].good_set.split(',')
    res.json({
      "data": result[0],
      "meta": {
        "msg": "获取成功",
        "status": 200
      }
    })
  })
}

// 商品评价
module.exports.assess = (req, res) => {
  db.query(`SELECT *
  FROM assess
  WHERE good_id = ${req.params.good_id}`, (error, result) => {
    if (error) throw error
    res.json({
      "data": result,
      "meta": {
        "msg": "获取成功",
        "status": 200
      }
    })
  })
}