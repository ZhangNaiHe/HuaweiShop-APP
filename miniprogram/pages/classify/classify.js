// pages/classify/classify.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    // isChecked:"brand-list-txt",

    currentTab: 0,
    items:[
      {
        // 导航名称
        text: '所有城市',
        // 禁用选项
        disabled: false,      
      }
    ],
    brandlist:[
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},
      {src:"../../images/iphone.png",name:"荣耀30S 5G"},

    ],
    active: 1,
    icon: {
      normal:"../../images/home-two.png",
      active: "../../images/home-one .png",
    },
    aicon: {
      normal:"../../images/fenlei-two.png",
      active: "../../images/fenlei-one .png",
    },
    bicon: {
      normal:"../../images/me-two.png",
      active: "../../images/me-one.png",
    },
    content:"可以试试左右滑动了",

    

  },

  onChange(event) {
    this.setData({ active: event.detail });
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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
  onClickNav({ detail = {} }) {
    this.setData({
      mainActiveIndex: detail.index || 0,
    });
  },

  onClickItem({ detail = {} }) {
    const activeId = this.data.activeId === detail.id ? null : detail.id;

    this.setData({ activeId });
  },
  toMe:function () {
    wx.navigateTo({
      url: '/pages/me/me',
    })
  },
  toWelcome:function () {
    wx.navigateTo({
      url: '/pages/welcome/welcome',
    })
  },
  onChoosetxt: function (e) {
    // this.setData({
    //   isChecked:"brand-list-txt-new"
    // })


  },
  onLoad: function() {

    var that = this;

    /**
     * 获取当前设备的宽高
     */
    // wx.getSystemInfo( {

    //     success: function( res ) {
    //         that.setData( {
    //             winWidth: res.windowWidth,
    //             winHeight: res.windowHeight
    //         });
    //     }

    // });
},
  
//  tab切换逻辑
onChoosetxt: function( e ) {

    var that = this;

    if( this.data.currentTab === e.target.dataset.current ) {
        return false;
    } else {
        that.setData( {
            currentTab: e.target.dataset.current
        })
    }
},

bindChange: function( e ) {

    var that = this;
    that.setData( { currentTab: e.detail.current });

},
    

})