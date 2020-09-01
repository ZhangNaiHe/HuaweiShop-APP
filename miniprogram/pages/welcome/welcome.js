// pages/welcome/welcome.js
const app = getApp();
var startX, endX;
var moveFlag = true;
Page({

  /**
   * 页面的初始数据
   * 
   */

  data: {
    active: 0,
    icon: {
      normal: "../../images/home-two.png",
      active: "../../images/home-one.png",
    },
    aicon: {
      normal: "../../images/fenlei-two.png",
      active: "../../images/fenlei-one.png",
    },
    bicon: {
      normal: "../../images/me-two.png",
      active: "../../images/me-one.png",
    },
    content: "可以试试左右滑动了",
    arry: [
      {
        src: "../../images/one.png",
        text: "华为专区"
      },
      {
        src: "../../images/two.png",
        text: "荣耀专区"
      },
      {
        src: "../../images/three.png",
        text: "领劵中心"
      },
      {
        src: "../../images/four.png",
        text: "安心居家"
      },
      {
        src: "../../images/five.png",
        text: ""
      }
    ],
    array: [
    ],
    goods: [],
    hotarray: [{
        src: "../../images/iphone.png",
        text: "111",
        name: "华为畅享10",
        price: "￥4000"
      },
      {
        src: "../../images/iphone.png",
        text: "111",
        name: "华为畅享10",
        price: "￥4000"
      },
      {
        src: "../../images/iphone.png",
        text: "111",
        name: "华为畅享10",
        price: "￥4000"
      }
    ],
    recarray: [{
        src: "../../images/iphone.png",
        name: "华为畅享10",
        price: "4000",
        text: "预定最高省700"
      },
      {
        src: "../../images/iphone.png",
        name: "华为畅享10",
        price: "4000",
        text: "享受12期免息"
      },
      {
        src: "../../images/iphone.png",
        name: "华为畅享10",
        price: "4000",
        text: "预定特惠150 享6期..."
      },
      {
        src: "../../images/iphone.png",
        name: "华为畅享10",
        price: "4000",
        text: "预定最高省700"
      },
      {
        src: "../../images/iphone.png",
        name: "华为畅享10",
        price: "4000",
        text: "享受12期免息"
      },
      {
        src: "../../images/iphone.png",
        name: "华为畅享10",
        price: "4000",
        text: "预定特惠150 享6期..."
      }
    ],
    phonearray: [
    ],
    comarray:[
    ],
    padarray:[
    ],
    watcharray:[
    ]

  },

  /**
   * 生命周期函数--监听页面加载
   */

  onChange(event) {
    this.setData({
      active: event.detail
    });
  },
  onLoad: function (options) {
    wx.request({
      url: 'http://localhost:2020/api/v1/main',
      data: {},
      method: 'GET',
      header: {
        'content-type': 'application/x-www-form-urlencoded'
      },
      success:  (res) => {
        // console.log(res);
        this.setData({
       
          array: res.data.data
        })
      }
    }),
    wx.request({
      url: 'http://127.0.0.1:2020/api/v1/main_phone',
      method: 'GET',
      header: {
        'content-type': 'application/x-www-form-urlencoded'
      },
      success: (res) => {
        console.log(res)
        this.setData({
          phonearray:res.data.data
        })
      }

    }),
    wx.request({
      url: 'http://127.0.0.1:2020/api/v1/main_book',
      data: {},
      method: 'GET',
      header: {
        'content-type': 'application/x-www-form-urlencoded'
      },
      success:  (res) => {
        this.setData({
          comarray: res.data.data
        })
      }
    }),
    wx.request({
      url: 'http://127.0.0.1:2020/api/v1/main_pad',
      data: {},
      method: 'GET',
      header: {
        'content-type': 'application/x-www-form-urlencoded'
      },
      success:  (res) => {
        this.setData({
    
          padarray: res.data.data
        })
      }
    }),
    wx.request({
      url: 'http://127.0.0.1:2020/api/v1/main_watch',
      data: {},
      method: 'GET',
      header: {
        'content-type': 'application/x-www-form-urlencoded'
      },
      success:  (res) => {
        this.setData({
          watcharray: res.data.data
        })
      }
    })


  },


  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  btnanniu: function () {

  },
  toClassify: function () {
    wx.navigateTo({
      url: '/pages/classify/classify',
    })
  },
  toMe: function () {
    wx.navigateTo({
      url: '/pages/me/me',
    })
  },
  hotList: function () {
    wx.navigateTo({
      url: '/pages/goodchoo/goodchoo',
    })
  }
})