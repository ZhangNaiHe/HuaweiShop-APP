const router = require('express').Router()
const cateCtrl = require('../controllers/cateCtrl')
const bodyParser = require('body-parser')

// 商品列表
router.get('/cate',cateCtrl.catelist)

module.exports = router