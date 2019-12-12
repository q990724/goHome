<template>
  <div class="city-intr">
    <van-row  class="c">
      <van-col span="12" v-for="(c,i) of city" :key="i">
        <div class="city-img">
          <img :src="c.imgs" alt="">
        </div>
        <span class="city-name">{{c.city}}</span>
      </van-col>
      <!-- <van-col span="12">
        <div class="city-img">
          <img src="../../assets/images/find/city/c3.jpg" alt="">
        </div>
        <span>重庆</span>
      </van-col> -->
    </van-row>
  </div>
</template>
<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  data(){
    return {
      city:[
        { imgs:require("../../assets/images/find/city/c1.jpg"), city:"成都" },
        { imgs:require("../../assets/images/find/city/c2.jpg"), city:"北京" },
        { imgs:require("../../assets/images/find/city/c1.jpg"), city:"上海" },
        { imgs:require("../../assets/images/find/city/c2.jpg"), city:"西安" },
      ]
    }
  }
})
</script>
<style lang="scss" scoped>
.c>.van-col:nth-child(2n){
  padding-left:.610687rem;
}
.c>.van-col:nth-child(n){
  padding-right:.610687rem;
}
.city-intr{
  /* padding:0 1.010687rem; */
  margin: .305344rem .610687rem;
}
.city-img>img{
  width:100%;
  height:10.320611rem;
  border-radius: 5%;
  /* padding:.610687rem; */

}
</style>

