<template>
  <div>
    <van-tabs v-model="active">
      <van-tab v-for="(item,i) of result" :key="i" class="Image" :title="item.city_name">
        <div class="dex">
          <div class="nw" v-for="(item,i) of result" :key="i" :title="item.city_name">
            <div>
              <van-swipe @change="onChange" >
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
              </van-swipe>
            </div>
            <p class="firstTitle">xxxxxxxx介绍</p>
            <p class="lastTitle">时间的萨克的角度讲</p>
          </div>
        </div>
      </van-tab>
      <!-- <van-tab class="Image" title="上海">
        <div class="dex">
          <div class="nw">
            <div>
              <van-swipe @change="onChange">
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
              </van-swipe>
            </div>
            <p class="firstTitle">xxxxxxxx介绍</p>
            <p class="lastTitle">时间的萨克的角度讲</p>
          </div>
        </div>
      </van-tab> 
      <van-tab class="Image" title="辽宁">
        <div class="dex">
          <div class="nw">
            <div>
              <van-swipe @change="onChange">
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
              </van-swipe>
            </div>
            <p class="firstTitle">xxxxxxxx介绍</p>
            <p class="lastTitle">时间的萨克的角度讲</p>
          </div>
        </div>
      </van-tab>
      <van-tab class="Image" title="杭州">
        <div class="dex">
          <div class="nw">
            <div>
              <van-swipe @change="onChange">
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
              </van-swipe>
            </div>
            <p class="firstTitle">xxxxxxxx介绍</p>
            <p class="lastTitle">时间的萨克的角度讲</p>
          </div>
        </div>
      </van-tab>
      <van-tab class="Image" title="天津">
        <div class="dex">
          <div class="nw">
            <div>
              <van-swipe @change="onChange">
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
              </van-swipe>
            </div>
            <p class="firstTitle">xxxxxxxx介绍</p>
            <p class="lastTitle">时间的萨克的角度讲</p>
          </div>
        </div>
      </van-tab>
      <van-tab class="Image" title="石家庄">
        <div class="dex">
          <div class="nw">
            <div>
              <van-swipe @change="onChange">
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
              </van-swipe>
            </div>
            <p class="firstTitle">xxxxxxxx介绍</p>
            <p class="lastTitle">时间的萨克的角度讲</p>
          </div>
        </div>
      </van-tab>
      <van-tab class="Image" title="重庆">
        <div class="dex">
          <div class="nw">
            <div>
              <van-swipe @change="onChange">
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
                <van-swipe-item>
                  <img class="Img" src="../../assets/images/ak/p1.jpg" alt="">
                </van-swipe-item>
              </van-swipe>
            </div>
            <p class="firstTitle">xxxxxxxx介绍</p>
            <p class="lastTitle">时间的萨克的角度讲</p>
          </div>
        </div>
      </van-tab> -->
    </van-tabs>
  </div>
</template>

<script>
import config from "../../assets/config.ts";
export default {
  data() {
    return {
      active: 0,
      config: config,
      result : []
    }
  },
  methods: {
    onChange(index) {
      
    }
  },
  mounted() {
    this.config.axios({
      url: "/home/getCity"
    }).then(res=>{
      console.log(res.data.result);
      this.result = res.data.result;
    });
  },

}
</script>
<style scoped>
.dex{
  height: 19.541985rem;
  display: flex;
  flex-direction: column;
}
.Image{text-align: center}
.Img{
  width: 25.374046rem;
  height: 15.877863rem;
  border-radius: .305344rem;
}
.firstTitle{
  margin: 0;padding: 0;
  font-size:1.221374rem;
  text-align: left;
  padding-left: .916031rem;
  font-weight: bold;
  margin-bottom: .5rem;
}
.lastTitle{
  font-size:.977099rem;
  position: absolute;
  padding:.305344rem 0 0 .916031rem;
  color: #808080;
}
</style>
