<template>
  <div id="index">
    <!-- 首页轮播 -->
    <div class="lunbo">
      <van-swipe style="height:12.5rem" :autoplay="3000" indicator-color="white" vertical>
        <van-swipe-item>
          <img src="../../assets/images/index/lunbo/1.jpg">
          <div class="title">
            <h6>国内新年目的地</h6>
            <h3>跳上高铁去旅行</h3>
          </div>
        </van-swipe-item>
        <van-swipe-item>
          <img src="../../assets/images/index/lunbo/2.jpg">
        </van-swipe-item>
        <van-swipe-item>
          <img src="../../assets/images/index/lunbo/3.jpg">
        </van-swipe-item>
        <van-swipe-item>
          <img src="../../assets/images/index/lunbo/4.jpg">
        </van-swipe-item>
      </van-swipe>
    </div>
    <!-- 个人 -->
    <div class="person">
      <img src="../../assets/images/index/person.jpg">
    </div>
    <!-- 搜索框 -->
    <div class="search">
      <van-search @focus="onFocus" placeholder="搜 北京 试试" v-model="value"/>
    </div>
    <!-- 下方城市推荐 -->
    <div class="tehui">
      <h3 style="color:#484848;margin-bottom:6px;margin-left:8px">为您推荐</h3>
      <van-tabs v-model="chooseTab" color="#008489">
        <van-tab title="古城">
          <!-- 子组件 -->
          <bj></bj>
          <van-button type="primary" size="large">显示更多北京的房源</van-button>
        </van-tab>
        <van-tab title="长城">
          天津
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
        </van-tab>
        <van-tab title="故宫">
          上海
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
        </van-tab>
        <van-tab title="颐和园">
          重庆
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
        </van-tab>
      </van-tabs>
      <bj></bj>
      <van-button type="primary" size="large">显示更多北京的房源</van-button>
      <bj></bj>
      <van-button type="primary" size="large">显示更多北京的房源</van-button>

      <h3 style="color:#484848;margin-left:8px;margin-bottom:8px">爱彼迎旅行保障</h3>
      <!-- 旅行保障 -->
      <div class="all">
        <div class="first">
          <div class="img">
            <img src="../../assets/images/index/1.png">
          </div>
          <p>
            <span style="font-weight:700">安心房源保障</span>
            <span>人工审核所有中国房源页面信息，入住更放心</span>
          </p>
        </div>
        <div class="first">
          <div class="img">
            <img src="../../assets/images/index/2.png">
          </div>
          <p>
            <span style="font-weight:700">专业中文客服</span>
            <span>(86) 400-841-8888、(86) 010-8783-3463，24 小时服务</span>
          </p>
        </div>
        <div class="first">
          <div class="img">
            <img src="../../assets/images/index/3.png">
          </div>
          <p>
            <span style="font-weight:700">旅行安全保障</span>
            <span>多重风险控制设计，全方位保障您的行程安全</span>
          </p>
        </div>
      </div>
      <bj></bj>
      <van-button type="primary" size="large">显示更多北京的房源</van-button>
    </div>
    <!-- 底部信息 -->
    <div class="foot">
      <div class="choose-info">
        <van-row>
          <van-col span="12">
            <div id="selectArea">
              <p id="p" :isShow="isShow" @click="clickShow">{{content}}</p>
              <ul  id="ul" :class="{active : isShow , again : !isShow}" @click="change">
                <li v-for="(item,i) of language" :key="i" :data-value="item.value">{{item.value}}</li>

              </ul>
            </div>
          </van-col>
          <van-col span="12"></van-col>
        </van-row>
        <van-row>
          <van-col span="12">
            <router-link class="acss" to="index">注册/登录</router-link>
          </van-col>
          <van-col span="12">
            <router-link class="acss" to="index">下载应用</router-link>
          </van-col>
        </van-row>

        <div class="copy" style="margin-top:3rem">
          <p>京ICP备16017121号-3 京ICP证 160773号</p>
          <p>京公网安备 11010502032345号 安彼迎网络（北京）有限公司</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import bj from './bj.vue'
import bjVue from './bj.vue';
import home from "../../assets/api/home"
export default {
  data() {
    return {
      value: "",
      chooseTab: 0,
      isShow: false,
      content:"中文(简体)",
      language: [
        {value:"中文(简体)"},
        {value:"中文(繁体)"},
        {value:"日文(日文)"},
        {value:"韩语(韩语)"},
        {value:"德语"},
        {value:"英文"},
        
      ]
    };
  },
  methods: {
    onFocus() {
      this.$router.push("/searchCity");
    },
    clickShow() {
     this.isShow = !this.isShow;
    },
    change(e){
      if(e.target.nodeName === "LI"){
      console.log(1);
        this.content = e.target.dataset.value;
        this.isShow = false;
      }
    }
  },
  components:{
    bj : bj
  },
  created() {
    this.home.getCities().then(res=>{
      if(res.code == 200){
        this.cities = res.result;
        console.log(this.cities);
      }
    })
  }
};
</script>
<style scoped>
.active {
  height:10rem !important;
}
.again {
  height:0 !important;
}
#index #selectArea{
  position:relative;
}

#index #p {
  margin: 0;
  width: 100%;
  height: 2rem;
  border: 1px solid #333;
  text-align: center;
  line-height: 2rem;
  border-radius: 0.6rem;
}
#index #ul {
  width: 100%;
  text-align: center;
  overflow-y: scroll;
  /* height: 200px; */
  transition: height .4s;
  position:absolute;
  background:#fff;
}
#index #ul li {
  padding: 2px 0;
}
#index .copy p {
  margin: 0;
  color: #767676;
  font-size: 0.8125rem;
}
#index .acss {
  color: #484848;
  font-size: 1rem;
  display: block;
  margin: 15px 0;
}
#index .choose-info {
  padding: 1.25rem;
}

#index {
  position: relative;
  padding-bottom: 50px;
}
#index .lunbo img {
  width: 100%;
  height: 100%;
}
#index .lunbo {
  margin-bottom: 2rem;
}
#index .van-swipe__indicators {
  bottom: 1.875rem !important;
  left: 11% !important;
}
/* 搜索框 */
#index .search {
  position: absolute;
  top: 10rem;
  width: 100%;
  margin: auto;
}
#index .tehui {
  padding: 0 10px 0 10px;
}
#index .van-search {
  background: transparent !important;
}
#index .van-search__content {
  box-shadow: 4px 0px 15px 1px rgba(0, 0, 0, 0.3);
}
#index .van-search .van-cell {
  padding: 10px 10px 10px 0;
}
#index .person {
  position: absolute;
  top: 1rem;
  right: 1rem;
  width: 2.5rem;
  height: 2.5rem;
}
#index .person img {
  width: 100%;
}
#index .van-swipe-item {
  position: relative;
}
#index .title {
  position: absolute;
  top: 8rem;
  color: #fff;
  left: 2rem;
}
#index .title h3,
#index .title h6 {
  margin: 0;
}
#index .city {
  display: flex;
  height: 4rem;
  /* justify-content: space-between; */
  overflow-y: auto !important;
  overflow-x: scroll !important;
  white-space: nowrap;
}
#index .van-button {
  min-width: 4.5rem;
  border-radius: 0.5rem;
  background: #008489;
  border: #008489;
  margin: auto;
}
.van-button--large {
  width: 95%;
  margin: 0 9px !important;
}
#index .van-button[data-v-51edc7ed] {
  margin-top: 10px !important;
  margin-bottom: 10px !important;
}
.first {
  display: flex;
}
.first .img {
  width: 4rem;
  /* height:4rem; */
}
.first .img img {
  width: 100%;
}
.first p {
  margin-top: 10px;
}
.all {
  width: 90%;
  margin: auto;
  /* border:1px solid #ccc; */
  box-shadow: 0px 3px 15px 1px rgba(0, 0, 0, 0.3);
  border-radius: 0.625rem;
  padding: 0.625rem;
  margin-bottom: 1rem;
}
</style>
