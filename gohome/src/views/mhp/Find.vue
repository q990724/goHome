<template>
  <div class="find">
    <!-- 1.标题 -->
    <div class="title">
      <van-nav-bar fixed title="发现" />
    </div>
    <!-- 2.轮播 -->
    <div>
      <div class="swi-title">住民宿，上自由行</div>
      <van-swipe :autoplay="3000">
        <van-swipe-item v-for="(image, index) in images" :key="index">
          <img class="swi-img" v-lazy="image" />
        </van-swipe-item>
      </van-swipe>
    </div>
    <!-- 3.城市探索 -->
    <div>
      <div class="swi-title">城市探索</div>
      <div class="city-intr">
        <van-row>
          <van-col span="12">
            <div class="city-img">
              <img src="../../assets/images/find/city/c1.jpg" alt="">
            </div>
            <span class="city-name">成都</span>
          </van-col>
          <van-col span="12">
            <div class="city-img">
              <img src="../../assets/images/find/city/c3.jpg" alt="">
            </div>
            <span>重庆</span>
          </van-col>
        </van-row>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from "vue";
export default Vue.extend({
  data() {
    return {
      images: [
        require("../../assets/images/find/swipe/1.jpg"),
        require("../../assets/images/find/swipe/2.jpg"),
        require("../../assets/images/find/swipe/3.jpg")
      ]
    };
  }
});
</script>
<style lang="scss" scoped>
.find {
  background-color: #fff;
}
.title {
  font-weight: bold;
}
.swi-img{
  width:100%;
  height:15.320611rem;
  border-radius: 8%;
  box-sizing: border-box;
  padding:0 1.010687rem;
  margin-top:1.521374rem;
}
.swi-title{
  margin:.505344rem .910687rem;
  font-size: 0.977099rem;
  font-weight: bold;
}
.city-intr{
  padding:0 1.010687rem;
}
.city-img>img{
  width:95%;
  border-radius: 10%;
  
}
</style>
