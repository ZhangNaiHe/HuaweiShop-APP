const express = require('express')
const app = express()
const cors = require('cors');
// 使用cors包
app.use(cors())
const {server} = require('./config')

app.use(express.static('public'))
// 配置bodyparser
const bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({extended: false}))


// 测试
// app.get('/', (req, res) => {
//     res.send(`http://127.0.0.1:${server.port}${server.version}`)
// })

// 首页
app.use(server.version,require('./routers/main_manage'))

// 分类
app.use(server.version,require('./routers/cate_manage'))

// 搜索
app.use(server.version,require('./routers/search_manage'))

// 商品详情页
app.use(server.version,require('./routers/goodDetail_manage'))

app.listen(server.port,server.ip, () => {
  console.log(`http://127.0.0.1:${server.port}服务器运行中......`)
})