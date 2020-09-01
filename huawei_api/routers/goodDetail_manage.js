const router = require('express').Router()
const goodDetailCtrl = require('../controllers/goodDetailCtrl')
const bodyParser = require('body-parser')

// 商品信息
router.get('/goodDetail/:good_id', goodDetailCtrl.goodDetail)

// 商品评价
router.get('/goodDetail/assess/:good_id', goodDetailCtrl.assess)
module.exports = router