<template>
  <div class="concation">
    <div class="play">
      <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
      <div class="btn">
        <button @click="show1">查看图片</button>
      </div>
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
              <div class="woshi">
                <div>
                  <img src="../../assets/images/ak/home.png" alt="">
                  <span>1间卧室</span>
                </div>
                <div>
                  <img src="../../assets/images/ak/wc.png" alt="">
                  <span>1间卫生间</span>
                </div>
              </div>
              <div class="woshi">
                <div>
                  <img src="../../assets/images/ak/bed.png" alt="">
                  <span>1张床</span>
                </div>
                <div>
                  <img src="../../assets/images/ak/people.png" alt="">
                  <span>最多住2人</span>
                </div>
              </div>
            </div>
            <van-divider />
            <!-- 房东信息 -->
            <div class="utop">
              <div class="uname">
                <img src="../../assets/images/ak/heard.jpg" alt="">
                <div>
                  <p>房东：曹昌会</p>
                  <p>共收到228条评价 : 已验证</p>
                </div>
              </div>
              <div>
                <van-icon class="chat" name="chat-o" color="#07c160" size="48px" />
              </div>
            </div>
            <!-- 房子介绍 -->
            <div class="house">
              <p>此房位于市中心外滩南京东路豫园的中心位置，是老式小区，交通便利，小区门对面就是上海最大的书城，购物方便，买东西吃也很方便。到南京东路外滩豫园均可步行到达。</p>
              <a class="a" href="javascript:;">更多房源介绍</a>
            </div>
            <van-divider />
            <!-- 卧室小框 -->
              <div class="sborder">
                <p>卧室1</p>
                <div class="sbed">
                  <img src="../../assets/images/ak/bed.png">
                </div>
                <p>1张 1.8 米宽双人床, 1张沙发床</p>
              </div>
            <van-divider />
            <div class="imgstop">
              <div class="imsg">
                <img src="../../assets/images/ak/ses.png" alt="">
              </div>
              <div>
                <span>爱彼迎旅行保障</span>
                <span>|</span>
                <span>全方位保障 · 出行无忧</span>
              </div>
            </div>
            <van-divider />
            <div class="timess">
              <div>
                <p>整套房子/公寓</p>
                <span>独享整个房源，无需与房东或他人共住</span>
              </div>
              <div>
                <p>入住/退房</p>
                <span>入住时间 :</span>
                <span>14:00后</span>
                <span>退房时间 :</span>
                <span>12:00</span>
              </div>
              <div>
                <p class="p">自助入住</p>
                <span>通过密码钥匙盒自助入住</span>
              </div>
            </div>
            <van-divider />
            <!-- 设施 -->
            <div class="more">
              <div>
                <img src="../../assets/images/ak/wifi.png" alt="">
                <p>无线网络</p>
              </div>
              <div>
                <img src="../../assets/images/ak/coko.png" alt="">
                <p>厨房</p>
              </div>
              <div>
                <img src="../../assets/images/ak/xifashui.png" alt="">
                <p>洗发水</p>
              </div>
              <div>
                <img src="../../assets/images/ak/more.png" alt="">
                <p>更多设施</p>
              </div>
            </div>
          </div>
        </van-tab>
        <van-tab title="评价">
          <div class="pingjia">
            <div>
              <h2>评价</h2>
            </div>
            <div>
              <van-rate v-model="value" readonly color="blue"/>
              <span>84条评价</span>
            </div>
            <div class="ipt">
              <form action="/">
                <van-search
                  v-model="inputMsg"
                  placeholder="搜索评价"
                  height="25"
                  @search="onSearch"
                  @cancel="onCancel"
                />
              </form>
            </div>
            <div class="miaoshi">
              <div><span>如实描述</span></div>
              <div><van-rate v-model="value" readonly color="blue"/></div>
            </div>
            <div class="miaoshi">
              <div><span>沟通交流</span></div>
              <div><van-rate v-model="value" readonly color="blue"/></div>
            </div>
            <div class="miaoshi">
              <div><span>干净卫生</span></div>
              <div><van-rate v-model="value" readonly color="blue"/></div>
            </div>
            <div class="miaoshi">
              <div><span>位置便利</span></div>
              <div><van-rate v-model="value" readonly color="blue"/></div>
            </div>
            <div class="miaoshi">
              <div><span>入住顺利</span></div>
              <div><van-rate v-model="value" readonly color="blue"/></div>
            </div>
            <div class="miaoshi">
              <div><span>高性价比</span></div>
              <div><van-rate v-model="value" readonly color="blue"/></div>
            </div>
          </div>
        </van-tab>
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
      inputMsg:"",
      value: 5,
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
.miaoshi{
  display: flex;
  justify-content: space-between;
  padding-right: 1.221374rem;
  margin-top: .732824rem;
}
.miaoshi>div>span{
  font-size: 1.099237rem;
}
.ipt{
  margin-left: -1.221374rem;
  height: 2.625954rem;
  line-height: 2.625954rem;
}
.pingjia{
  padding-left: 1.221374rem; 
}
.more{
  display: flex;
  justify-content: space-around;
  text-align: center;
  margin-bottom: .610687rem;
}
.more>div>img{
  width:2.198473rem;
  height:2.198473rem;
}
.p{
  margin-top: .610687rem;
}
.timess{
  padding: .9375rem 2rem;
}
.timess>div>p{
  font-size: 1.25rem;
  font-weight: 600;
  padding-bottom: .625rem;
}
.timess>div:first-child>span{
  display: inline-block;
  margin-bottom: .625rem;
}
.imgstop{
  display: flex;
  justify-content: flex-start;
  padding-left: 1.5625rem;
}
.imgstop>div:nth-child(2)>span:nth-child(1){
  font-size:1rem;
}
.imgstop>div:nth-child(2)>span{
  padding-right: .625rem;
} 
.imsg{
  width: 1.625rem;
}
.sborder p{
  padding: .3125rem .625rem;
}
.sborder{
  padding-left: 1.875rem;
}
.sbed img{
  width: 2rem;
  padding-left: .5rem;
}
.a{
  font-size:1.125rem;
  padding-left: 1.875rem;
  color: rgb(0, 132, 137);
}
.house{
  background: rgb(248, 248, 248);
  padding: 1.25rem 0;
}
.house>p{
  margin-bottom: .3125rem;
  padding:.3125rem 1.875rem;
  font-size:1.25rem;
}
.uname{
  display: flex;
  justify-content: space-between;
}
.uname img{
  width:3rem;
  height:3rem;
  border-radius:50%;
  padding-left:.625rem;
  padding-right:1.25rem;
}
.chat{
  padding-right:1.25rem;
}
.utop{
  display: flex;
  justify-content: space-between;
  margin-bottom:.625rem;
}
.woshi{
  display: flex;
  justify-content: space-between;
  padding:.125rem 3.75rem;
}
.woshi img{
  width:1.125rem;
  height:1.125rem;
}
.huodong{
  display: flex;
  justify-content: space-between;
  padding: .1875rem 1.25rem;
}
.huodong>div:first-child>p:first-child{
  font-size: .875rem;
  font-weight: bold;
  padding-bottom: .3125rem;
  color: #103;
}
.huodong>div:first-child>p:last-child{
  color: #808080;
}
.msg>p{
  font-size: 1.125rem;
  padding-left:.625rem;
  font-weight: bold;
}
.homes{
  margin: .3125rem 0;
}
.homes>p{
  font-size: .75rem;
  padding-left: .625rem;
}
p{padding: 0;margin: 0}
ul{
  width: 80%;
  display: flex;
  justify-content: space-between;
  padding: .625rem;
}

.concation{
  /* position: relative; */
}
.play{
  position: relative;
}
Img{
  width:100%;
}
.btn{
  position:absolute;
  bottom:1.25rem;right:2.1875rem;
}
.btn>button{
  border-radius: .1875rem;
  outline: none;
  border: 0;
  background: #808080;
  color: #fff;
  padding: .3125rem .625rem;
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
  padding: .3125rem;
}
.van-icon-search:before{
  background-color:#484848;
  border-radius: 50%;
  opacity: 0.3;
  padding: .3125rem;
}
.van-icon-user-circle-o:before{
  background-color:#484848;
  border-radius: 50%;
  opacity: 0.3;
  padding: .3125rem;
}

</style>
