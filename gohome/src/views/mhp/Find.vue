<template>
  <div class="find">
    <!-- 1.标题 -->
    <div class="title">
      <van-nav-bar title="发现" />
    </div>
    <!-- 2.轮播 -->
    <van-swipe :autoplay="3000">
      <van-swipe-item v-for="(image, index) in images" :key="index">
        <img v-lazy="image" />
      </van-swipe-item>
    </van-swipe>
  </div>
</template>
<script lang="ts">
import Vue from "vue";
export default Vue.extend({
  data() {
    return {
      images: [
        "http://localhost:8080/images/find/swipe/1.jpg",
        "../../assets/images/find/swipe/2.jpg",
        "../../assets/images/find/swipe/3.jpg"
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
</style>
