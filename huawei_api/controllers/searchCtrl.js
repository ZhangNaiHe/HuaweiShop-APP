const db = require('../db')

// 搜索接口
module.exports.searchlist = (req, res) => {
  let query = req.query.query
  let orderby = req.query.orderby
  let order = ''
  let price_range = req.query.price_range
  if (price_range){
    price_range = price_range.split('-')
  }else {
    price_range = [0,999999]
  }
  if (orderby == 'low'){
    order = 'ASC'
  } else {
    order = 'DESC'
  }
  price_range = [parseInt(price_range[0]),parseInt(price_range[1])]
  db.query(`SELECT *
  FROM goods
  WHERE key_words LIKE '%${query}%'
  AND good_price BETWEEN ${price_range[0]} AND ${price_range[1]}
  OR good_name LIKE '%${query}%'
  ORDER BY good_price ${order}`, (error, result) => {
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