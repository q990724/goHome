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
.c{
  margin-bottom: 3.832061rem;
}
.c>.van-col:nth-child(2n){
  padding-left:.610687rem;
}
.city-intr{
  margin: .305344rem .610687rem;
}
.city-img{
  margin:0;
}
.city-img>img{
  width:100%;
  height:10.320611rem;
  border-radius: 5%;
}
.city-name{
  font-size: .854962rem;
  font-weight: bold;
}
</style>

