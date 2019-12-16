<template>
  <div>
    <!-- <h1>你好Font 父组件</h1> -->
    <van-nav-bar title="城市搜索"  left-arrow></van-nav-bar>
    <addid></addid>
    <pimgs></pimgs>
  </div>
</template>

<script>
import Addid from "./Addid.vue"
import Pimgs from "./Pimgs.vue"

  export default {
    components : {
      "addid":Addid,
      "pimgs":Pimgs
    }
  }
</script>
<style scoped>
.van-nav-bar__title.van-ellipsis{
  font-size: 1.221374rem;
}
.van-icon-arrow-left:before{
  font-size: 1.221374rem;
  color: #808080;
}
</style>
