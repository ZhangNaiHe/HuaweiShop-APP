const router = require('express').Router()
const mainCtrl = require('../controllers/mainCtrl')
const bodyParser = require('body-parser')

// 商品列表
router.get('/main',mainCtrl.mainlist)

// 首页手机推荐接口
router.get('/main_phone',mainCtrl.phone)

// 首页笔记本推荐接口
router.get('/main_book',mainCtrl.book)

// 首页平板推荐接口
router.get('/main_pad',mainCtrl.pad)

// 首页智能穿戴推荐接口
router.get('/main_watch',mainCtrl.watch)

// 首页潮流配件推荐接口
router.get('/main_gift',mainCtrl.gift)

// 首页智能家居推荐接口
router.get('/main_home',mainCtrl.home)

// 首页生态精品推荐接口
router.get('/main_product',mainCtrl.product)
module.exports = router