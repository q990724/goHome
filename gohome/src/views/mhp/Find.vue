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
        <van-swipe-item v-for="(image, index) in images1" :key="index">
          <img class="swi-img" :src="image"/>
        </van-swipe-item>
      </van-swipe>
    </div>
    <!-- 3.城市探索 -->
    <div>
      <div class="swi-title">城市探索</div>
      <city></city>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from "vue";
import city from "./city.vue";
export default Vue.extend({
  data() {
    return {
      images1: [
        require("../../assets/images/find/swipe/1.jpg"),
        require("../../assets/images/find/swipe/2.jpg"),
        require("../../assets/images/find/swipe/3.jpg")
      ]
    };
  },
  components:{
    "city":city
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
  height:10.320611rem;
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

</style>
