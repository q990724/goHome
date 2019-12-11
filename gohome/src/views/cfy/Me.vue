<template>
  <div class="me">
    <!-- 用户基本信息 -->
    <div class="parent" >
      <div class="bg" style="background-image:url(http://127.0.0.1:5050/images/user_avatar/unknow-man.jpg)"></div>
      <div class="user-msg">
        <!-- 用户设置 -->
        <div class="user-setting">
          <van-row>
            <van-col span="2" offset="22">
              <van-icon name="add" size="1.8rem"/>
            </van-col>
          </van-row>
        </div>
        <!-- 用户头像 -->
        <div class="pic">
          <img src="http://127.0.0.1:5050/images/user_avatar/unknow-man.jpg" width="60">
        </div>
        <!-- 用户名称 -->
        <h5 class="uname">菠萝菠萝蜜</h5>
        <a href="javascript:;">签到</a>
        <p>通过实名认证，可享用最高优惠卷哦 &gt;</p>
      </div>
    </div>
    <!-- 功能列表 -->
    <div class="list">
      <!-- 第一行 -->
      <div class="top1">
        <van-grid :column-num="3" :border="false">
          <van-grid-item :icon="item.icon" :text="item.text" v-for="(item , i) of top1_pics" :key="i" :to="item.toPath" />
        </van-grid>
      </div>
      <!-- 第二行 -->
      <div class="top2">
        <van-grid :column-num="3" :border="false">
          <van-grid-item :icon="item.icon" :text="item.text" v-for="(item , i) of top2_pics" :key="i" />
        </van-grid>
      </div>
      <!-- 成为房东 -->
      <van-button type="info" block>我也要成为房东</van-button>
      <!-- 退出登录 -->
      <van-button type="danger" block>退出登录</van-button>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  data() {
    return {
      top1_pics : [
        {text : "收藏" , icon: require("../../../public/Me/收 藏 蓝色.png"), toPath: "Like"},
        {text : "代金券" , icon: require("../../../public/Me/代金券.png"), toPath: "Voucher"},
        {text : "积分" , icon: require("../../../public/Me/积分.png"), toPath: "Score"}
      ],
      top2_pics : [
        {text : "订单" , icon: require("../../../public/Me/订单.png"), toPath: "Like"},
        {text : "礼品" , icon: require("../../../public/Me/礼品.png"), toPath: "Voucher"},
        {text : "邀请" , icon: require("../../../public/Me/邀请.png"), toPath: "Score"},
        {text : "客服" , icon: require("../../../public/Me/客服.png"), toPath: "Score"},
        {text : "代金券" , icon: require("../../../public/Me/代金券.png"), toPath: "Score"},
        {text : "收 藏 蓝色" , icon: require("../../../public/Me/收 藏 蓝色.png"), toPath: "Score"}
      ]
    }
  },
  methods: {

  },
  
}
</script>

<style scoped lang="scss">
  .van-button{
    margin: .8rem 0;
  }
  .list{
    background-color: #f7f7f7;
    padding:1rem;
  }
  .list::before{
    content: "";
    display: table;
  }
  .top1{
    box-sizing: border-box;
    padding: 0.5rem;
    background: #fff;
    margin-bottom: 1rem;
    border-radius: 15px;
  }

  .top2{
    border-radius: 15px;
    box-sizing: border-box;
    padding: 0.5rem;
    background: #fff;
    margin-bottom: 1rem;
  }

  .top1 .van-grid{
    padding: 1rem 0.5rem;
  }

  .top1 .van-grid-item{
    padding: 0 .9375rem;
  }

  .parent{
    height: 13.75rem;
    position: relative;
    overflow: hidden;
  }
  .bg{
    width: 100%;
    height: 100%;
    position: absolute;
    z-index: -1;
    filter: blur(2.2rem);
    background-size: cover;
    background-repeat: no-repeat;
    opacity: .6;
  }
  .user-msg{
    width: 100%;
    height: 100%;
    text-align:center;
    position: absolute;
    z-index: 1;
    padding: 1rem;
    box-sizing: border-box;
    a{
      color: rgb(40, 71, 117);
      font-size: .9375rem;
    }
    .pic{
      img{
        border-radius: 50%;
        border: 5px solid #f2f2f2;
        padding: 5px;
      }
    }
    .uname{
      margin: 0 0 .3125rem 0;
      color: #fff;
      font-size: 1.125rem;
    }
    p{
      color: #fff;
      margin-top: .3125rem;
      font-size: .9375rem;
    }
  }

</style>
