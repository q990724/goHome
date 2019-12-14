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
      <img src="../../assets/images/index/person.jpg" >
    </div>
    <!-- 搜索框 -->
    <div class="search">
      <van-search @focus="onFocus" placeholder="搜 北京 试试" v-model="value" />
    </div>
    <!-- 下方城市推荐 -->
    <div class="tehui">
      <h3 style="color:#484848;margin-bottom:0">为您推荐</h3>
      <van-tabs color="#008489" animated>
        <van-tab  title="北京" >
          <!-- 子组件 -->
          <bj></bj>
        </van-tab>
        <van-tab title="天津">
          天津
        </van-tab>
        <van-tab title="上海">
          上海
        </van-tab>
        <van-tab title="重庆">
          重庆
        </van-tab>
      </van-tabs>
      
    </div>
  </div>
</template>
<script>
import bj from './bj.vue'
import bjVue from './bj.vue';
import home from "../../assets/api/home"
export default {
  data(){
    return {
      value:"",
      chooseTab:0,
      home: new home(),
      cities: null
    }
  },
  methods: {
    onFocus(){
      this.$router.push("/searchCity")
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
}
</script>
<style scoped>
#index{
  position: relative;
}
 #index .lunbo img{
   width:100%;
  height:100%;
 }
 #index .lunbo{
   margin-bottom:2rem;
 }
 #index .van-swipe__indicators{
   bottom:1.875rem !important;
   left:11% !important;
 }  
 /* 搜索框 */
 #index .search{
   position: absolute;
   top:10rem;
   width:100%;
  margin:auto;
  
 }
 #index .van-search{
   background:transparent !important;
 }
 #index .van-search__content{
   box-shadow: 4px 0px 15px 1px rgba(0,0,0,.3)
 }
 #index .van-search .van-cell{
   padding:10px 10px 10px 0;
 }
 #index .person{
   position:absolute;
   top:1rem;
   right:1rem;
   width:2.5rem;
   height:2.5rem;
 }
 #index .person img{
   width:100%;
 }
 #index .van-swipe-item{
   position:relative;

 }
 #index .title{
   position:absolute;
   top:8rem;
   color:#fff;
   left:2rem;
 }
 #index .title h3,#index .title h6{
   margin:0;
 }
 #index .city{
   display: flex;
   height:4rem;
   /* justify-content: space-between; */
   overflow-y: auto !important;
   overflow-x:scroll !important;
   white-space:nowrap;
 }
 #index .van-button{
   min-width:4.5rem;
   border-radius: .5rem;
   background:#008489;
   border: #008489;
   margin:0 1rem;
 }
</style>
