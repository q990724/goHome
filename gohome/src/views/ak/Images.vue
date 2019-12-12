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
            <!-- 房间介绍 -->
            <div>
              <div class="homes">
                <p>上海·整间LOFT</p>
              </div>
              <div class="msg">
                <p>
                  【歐陽·免服务费—新天地精致loft】新天地地铁口/虹桥机场直达/毗邻田子坊思南公馆/步行可达外滩
                </p>
              </div>
            </div>
            <van-divider />
            <!-- 优惠活动 -->
            <div class="huodong">
              <div>
                <p>享受 12月6日 - 12月19日 期间的 9 折优惠</p>
                <p>在 8 天内完成预订，锁定限时好价</p>
              </div>
              <div>
                <img style="width:35px" src="../../assets/images/ak/naozhong.png" >
              </div>
            </div>
            <van-divider />
            <!-- 卧室 -->
            <div>
              <div>
                <div>
                  <img style="width:32px" src="../../assets/images/ak/home.png" alt=""><span>1间卧室</span>
                  <img style="width:32px" src="../../assets/images/ak/wc.png" alt=""><span>1间卫生间</span>
                </div>
                <div>
                  <img style="width:32px" src="../../assets/images/ak/bed.png" alt=""><span>2张床</span>
                  <img style="width:32px" src="../../assets/images/ak/people.png" alt=""><span>最多3个人</span>
                </div>
              </div>
            </div>
            <van-divider />
            <!-- 房东信息 -->
            <div>
              <div>
                <img src="" alt="">
                <p>房东：曹昌会</p>
                <p>共收到228条评价 : 已验证</p>
              </div>
              <div>
                <img src="" alt="">
              </div>
            </div>
            <!-- 房子介绍 -->
            <div>
              <p>此房位于市中心外滩南京东路豫园的中心位置，是老式小区，交通便利，小区门对面就是上海最大的书城，购物方便，买东西吃也很方便。到南京东路外滩豫园均可步行到达。</p>
              <button>更多房源介绍</button>
            </div>
            <van-divider />
            <!-- 卧室小框 -->
            <div>
              <div>
                <p>卧室1</p>
                <img src="" alt="">
                <p>1张 1.8 米宽双人床, 1张沙发床</p>
              </div>
            </div>
            <van-divider />
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
.huodong{
  display: flex;
  justify-content: space-between;
  padding: 3px 20px;
}
.huodong>div:first-child>p:first-child{
  font-size: 14px;
  font-weight: bold;
  padding-bottom: 5px;
  color: #103;
}
.huodong>div:first-child>p:last-child{
  color: #808080;
}
.msg>p{
  font-size: 18px;
  padding-left: 10px;
  font-weight: bold;
}
.homes{
  margin: 5px 0;
}
.homes>p{
  font-size: 12px;
  padding-left: 10px;
}
p{padding: 0;margin: 0}
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
  position:absolute;
  top: 24%;left: 73%;
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
  position:absolute;
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
