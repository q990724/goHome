<template>
  <div class="concation">
    <div class="paly">
      <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
    </div>
    <div class="btn">
      <button @click="show1">查看图片</button>
    </div>
    <div>
      <van-image-preview
        v-model="show"
        :images="images"
        @change="onChange"
      >
        <template v-slot:index>第{{ index+1 }}页</template>
      </van-image-preview>
    </div>
    <div class="tTop">
      <div class="search">
        <van-icon name="search" size="24" color="#fff" />
      </div>
      <div class="log">
        <van-icon class="like" name="like-o" size="24" color="#fff" />
        <van-icon class="user" name="user-circle-o" size="24" color="#fff" />
      </div>
    </div>
    <div>
      <van-tabs @click="onClick">
        <van-tab title="详情">
          <div>
            <div>
              <p>上海·整间LOFT</p>
            </div>
            <div>
              <p>
                【歐陽·免服务费—新天地精致loft】新天地地铁口/虹桥机场直达/毗邻田子坊思南公馆/步行可达外滩
              </p>
            </div>
            <div>
              <div>
                <p>享受 12月6日 - 12月19日 期间的 9 折优惠</p>
                <p>在 8 天内完成预订，锁定限时好价</p>
              </div>
              <div>
                <img src="../../assets/images/ak/naozhong.png" >
              </div>
            </div>
          </div>
        </van-tab>
        <van-tab title="评价">内容 2</van-tab>
        <van-tab title="可定日期">内容 1</van-tab>
        <van-tab title="位置">内容 2</van-tab>
        <van-tab title="须知">内容 1</van-tab>
        <van-tab title="房东">内容 2</van-tab>
      </van-tabs>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      show: false,
      index: 0,
      images: [
        require('../../assets/images/ak/p1.jpg'),
        require('../../assets/images/ak/p1.jpg'),
        require('../../assets/images/ak/p1.jpg'),
        require('../../assets/images/ak/p1.jpg')
      ]
    }
  },
  methods: {
    onChange(index) {
      this.index = index;
    },
    show1(){
      this.show = true
    },
    onClick(name, title) {
      
    }
  }
}
</script>
<style scoped>
ul{
  width: 80%;
  display: flex;
  justify-content: space-between;
  padding: 10px;
}

.concation{
  position: relative;
}
.btn{
  position:fixed;
  top: 35%;left: 70%;
}
.btn>button{
  border-radius: 3px;
  outline: none;
  border: 0;
  background: #808080;
  color: #fff;
  padding: 5px 10px;
}
.tTop{
  width: 90%;
  position:fixed;
  top: 1%;left: 6%;
  display: flex;
  justify-content: space-between;
}
.log{
  width: 26%;
  display: flex;
  justify-content: space-between;
}
.van-icon-like-o:before{
  background-color:#484848;
  opacity: 0.3;
  border-radius: 50%;
  padding: 5px;
}
.van-icon-search:before{
  background-color:#484848;
  border-radius: 50%;
  opacity: 0.3;
  padding: 5px;
}
.van-icon-user-circle-o:before{
  background-color:#484848;
  border-radius: 50%;
  opacity: 0.3;
  padding: 5px;
}

img{
  width: 375px;
}
</style>
