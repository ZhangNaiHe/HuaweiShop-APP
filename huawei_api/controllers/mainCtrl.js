const db = require('../db')

// 热门十件商品
module.exports.mainlist = (req, res) => {
    let pagenum = parseInt(req.query.pagenum)
    let pagesize = parseInt(req.query.pagesize)
    db.query(`SELECT *
  FROM goods
  LIMIT 0,7`, (error, result) => {
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

// 手机推荐接口
module.exports.phone = (req, res) => {
    db.query(`SELECT *
    FROM goods
    WHERE key_words LIKE '%手机%'
    LIMIT 0,4`, (error, result) => {
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

// 笔记本推荐接口
module.exports.book = (req, res) => {
    db.query(`SELECT *
    FROM goods
    WHERE key_words LIKE '%笔记本%'
    LIMIT 0,10`, (error, result) => {
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

// 平板推荐接口
module.exports.pad = (req, res) => {
    db.query(`SELECT *
    FROM goods
    WHERE key_words LIKE '%平板%'
    LIMIT 0,10`, (error, result) => {
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

// 智能穿戴接口
module.exports.watch = (req, res) => {
    db.query(`SELECT *
    FROM goods
    WHERE key_words LIKE '%穿戴%'
    LIMIT 0,10`, (error, result) => {
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

// 潮流配件接口
module.exports.gift = (req, res) => {
    db.query(`SELECT *
    FROM goods
    WHERE key_words LIKE '%配件%'
    LIMIT 0,10`, (error, result) => {
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

// 智能家居接口
module.exports.home = (req, res) => {
    db.query(`SELECT *
    FROM goods
    WHERE key_words LIKE '%家居%'
    LIMIT 0,10`, (error, result) => {
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

// 生态精品接口
module.exports.product = (req, res) => {
    db.query(`SELECT *
    FROM goods
    WHERE key_words LIKE '%生态%'
    LIMIT 0,10`, (error, result) => {
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