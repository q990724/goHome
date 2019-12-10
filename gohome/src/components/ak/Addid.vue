<template>
  <div>
    <van-tabs v-model="active">
      <van-tab class="Image" title="北京">
        <img src="../../assets/images/p1.jpg" alt="">
        <div class="dex">
          <a href="#">详情</a>
          <a href="#">评价</a>
          <a href="#">可定日期</a>
          <a href="#">位置</a>
          <a href="#">需知</a>
          <a href="#">房东</a>
        </div>
      </van-tab>
      <van-tab title="成都">内容 2</van-tab>
      <van-tab title="杭州">内容 3</van-tab>
      <van-tab title="青岛">内容 4</van-tab>
    </van-tabs>
  </div>
</template>

<script>
export default {
  data() {
    return {
      active: 0
    };
  }
}
</script>
<style scoped>
.dex>a:nth-child(1){
  color: #808080;
}
.Image{text-align: center}
.Image>img{
  width: 350px;
  height: 260px;
  border-radius: 5px;
}
</style>
