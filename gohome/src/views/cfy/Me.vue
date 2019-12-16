<template>
  <div class="me">
    <!-- 用户基本信息 -->
    <div class="parent" >
      <div class="bg" 
        :style="{
            'background-image' : `url(${bg})`
          }">
      </div>
      <div class="user-msg">
        <!-- 用户设置 -->
        <div class="user-setting">
          <van-row>
            <van-col span="2" offset="22">
              <van-icon name="add" size="1.8rem" @click="toogleUserDetail"/>
            </van-col>
          </van-row>
        </div>
        <!-- 用户头像 -->
        <div class="pic">
          <img :src="`${bg}`" width="60">
        </div>
        <!-- 用户名称 -->
        <h5 class="uname">{{userMsg.user_name}}</h5>
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
      <van-button type="danger" block @click="quit">退出登录</van-button>
    </div>

    <div class="userDetail" :style="isShowDetail ? showDetailHeight : hideDetailHeight">
      <van-icon name="close" class="close" @click="closeDetail"/>
      <div class="detail-item">
        <van-panel title="登录密码" status="正常">
          <div>{{isHidePassword ? "************" : userMsg.upwd}}</div>
          <div slot="footer" style="text-align:right">
            <van-button size="small" @click="hidePassword">
              {{isHidePassword ? "显示" : "隐藏"}}
            </van-button>
            <van-button size="small" type="danger" @click="changePassword">修改</van-button>
          </div>
        </van-panel>
      </div>
      <div class="detail-item">
        <van-panel title="登录时间" status="正常">
          <div>{{login_time}}</div>
        </van-panel>
      </div>
      <div class="detail-item">
        <van-panel title="真实姓名" status="正常">
          <div>{{userMsg.user_name}}</div>
        </van-panel>
      </div>
      <div class="detail-item">
        <van-panel title="绑定邮箱" status="正常">
          <div>{{userMsg.email}}</div>
        </van-panel>
      </div>
      <div class="detail-item">
        <van-panel title="手机号码" status="正常">
          <div>{{userMsg.phone}}</div>
        </van-panel>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import {Toast} from "vant";
import User from "../../assets/api/user";
import config from "../../assets/config";
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
      ],
      user: null,
      userMsg : {},
      bg : config.server + "images/user_avatar/unknow-man.jpg",
      isShowDetail: false,
      showDetailHeight: {height: "45rem"},
      hideDetailHeight: {height: "0px",padding: "0"},
      isHidePassword : (this as any).$store.getters.getIsHidePassword,
      login_time : ""
    }
  },
  methods: {
    quit(){
      (this as any).user.quitLogin().then((res: any)=>{
        res ? Toast.success("退出成功！") : Toast.fail("请稍后重试！");
      });
      (this as any).$router.push("login");
    },

    //显示用户详细信息
    toogleUserDetail() {
      (this as any).isShowDetail = !(this as any).isShowDetail;
    },

    //隐藏用户详细信息
    closeDetail() {
      (this as any).isShowDetail = false;
    },

    //切换用户密码显示方式
    hidePassword() {
      (this as any).$store.commit("setIsHidePassword");
      (this as any).isHidePassword = (this as any).$store.getters.getIsHidePassword;
    },

    // 修改密码
    changePassword() {

    }
  },
  
  created(){
    let that: any = this;
    //判断是否登录
    that.isLogin().then((res: any)=>{
      if(!res){
        Toast.fail({
          message: "请先登录",
          onOpened: ()=>{
            that.$router.push("login");
            return;
          }
        });
      }else{
        //获取用户登录后的信息
        // that.userMsg = JSON.parse(sessionStorage.getItem("user"));
        var json: string | null = sessionStorage.getItem("user");
        if(json){
          that.userMsg = JSON.parse(json);
        }
        (this as any).bg =config.server + that.userMsg.pic;
        var time = Number(sessionStorage.getItem("login_time"));
        console.log(new Date(time).toLocaleString());
        (this as any).login_time = new Date(time).toLocaleString();
      }
    });
    //退出登录
    (this as any).user = new User();
  }

}
</script>

<style scoped lang="scss">
  .userDetail{
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    background-color: #fff;
    box-shadow: 0 .3125rem .3125rem .3125rem #ccc;
    transition: .6s;
    border-top-left-radius: 1.5rem;
    border-top-right-radius: 1.5rem;
    padding: 3rem 2rem;
    box-sizing: border-box;
    z-index: 999;
    // padding-bottom: 2.875rem;
    // overflow: hidden;
  }

  .van-panel__content {
    padding:10px 16px;
    font-size: 20px;
    color: #36d;
  }

  .close{
    content: "";
    font-size: 1.6rem;
    position: absolute;
    right: 20px;
    top: 15px;
  }

  .close:active{
    color: #f00;
  }

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
