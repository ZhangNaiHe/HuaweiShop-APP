const router = require('express').Router()
const searchCtrl = require('../controllers/searchCtrl')
const bodyParser = require('body-parser')

// 商品列表
router.get('/search',searchCtrl.searchlist)

module.exports = router