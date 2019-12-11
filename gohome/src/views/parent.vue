<template>
  <div class="parent">

    
    <div class="frame">
      <div class="tab" v-show="active == 0"><app-index /></div>
      <div class="tab" v-show="active == 1"><app-find /></div>
      <div class="tab" v-show="active == 2">1</div>
      <div class="tab" v-show="active == 3"><app-me /></div>
    </div>
    <div class="footer">
      <van-tabbar v-model="active">
        <van-tabbar-item v-for="(item,i) of icons" :key="i">
          <span>{{item.name}}</span>
          <img slot="icon" slot-scope="props" :src="props.active ? item.active : item.inactive" />
        </van-tabbar-item>
      </van-tabbar>
    </div>
  </div>
</template>

<script lang="ts">
// import Index from "123";
import Me from "./cfy/Me.vue";
import Find from "./mhp/Find.vue";
import Index from "./wtq/Index.vue";
export default {
  data(){
    return {
      active : 0,
      icons: [
        {
          name : "首页",
          active : require("../../public/Footer/index-a.png"),
          inactive : require("../../public/Footer/index-n.png")
        },
        {
          name : "发现",
          active : require("../../public/Footer/find-a.png"),
          inactive : require("../../public/Footer/find-n.png")
        },
        {
          name : "订单",
          active : require("../../public/Footer/dd.a.png"),
          inactive : require("../../public/Footer/dd-n.png")
        },
        {
          name : "我的",
          active : require("../../public/Footer/me-a.png"),
          inactive : require("../../public/Footer/me-n.png")
        }
      ]
    }
  },
  components: {
    "app-me" : Me,
    "app-find" : Find,
    "app-index" : Index
  }
}
</script>

<style scoped lang="scss">
.slide-fade {
  position: absolute;
  left: 0;
  right: 0;
}
.slide-fade-enter-active {
  transition: all 0.8s ease;
}
.slide-fade-leave-active {
  transition: all 0.1s cubic-bezier(2, 0.5, 0.8, 1);
}
.slide-fade-enter,
.slide-fade-leave-to {
  left: 0;
  right: 0;
  transform: translateX(50px);
  opacity: 0;
}
</style>
