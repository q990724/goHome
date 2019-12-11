<template>
  <!-- 子组件推荐 -->
  <div id="bj">
    <!-- 一行两个 -->
    <van-row>
      <van-col span="12" v-for="(item,i) of houseLists" :key="i">
        <div class="item">
          <div class="img">
            <img :src="item.img" >
          </div>
          <div class="details">
            <h5>{{item.houseName}}</h5>
            <p>{{item.houseType}}</p>
            <span class="now">¥ {{item.nowPrice}}</span>
            <span class="yuan">¥ {{item.yuanPrice}}</span>
            <span class="time">每晚</span>
          </div>
         
          <!-- 评分 -->
          <div class="scoreArea">
            <van-rate size="12px" v-model="score" />
          </div>
        </div>
      </van-col>

      <!-- 循环生成 -->
      <van-col span="12">span: 8</van-col>
    </van-row>
  </div>
</template>
<script>
export default {
  data(){
    return {
      score:4,
      houseLists:[
        {img:require("../../assets/images/index/tuijian/1.jpg"),houseName:"Ruined houseA【距离雍和宫地铁站仅300米】（面积最大，设施最棒）后海、南锣鼓巷、故宫",houseType:"经济 大床房",nowPrice: 268,yuanPrice:298,score:5},
        {img:require("../../assets/images/index/tuijian/2.jpg"),houseName:"【温馨观景厅室】 （只接待女孩由屏风和布帘组成）近天安门故宫前门王府井北京南站南苑机场8/14地铁",houseType:"经济 大床房",nowPrice:107,yuanPrice:119,score:4},
        {img:require("../../assets/images/index/tuijian/3.jpg"),houseName:"珍妮家公寓独卫阳台主卧，地铁14号线望京南，西门子大厦，望京SOHO，中央美术学院，望京医院",houseType:"经济 大床房",nowPrice:134,yuanPrice:158,score:5},
        {img:require("../../assets/images/index/tuijian/1.jpg"),houseName:"【绿】 限时七折 日式轻奢百年四合院/雍和宫/簋街/雍和宫地铁站300米/茶室榻榻米/居酒屋/",houseType:"经济 大床房",nowPrice:349,yuanPrice:388,score:4},
      ],
    }
  }
}
</script>
<style scoped>
#bj .van-row{
  height:18.75rem;
}
.item{
  padding:.5rem;
}
.item h5{
  color:#484848;
  word-break: break-all;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
  overflow: hidden;
  margin-bottom:0;
}
.item p{
  margin:0;
  color:#484849;
  font-size:.875rem;
}
.item .now{
  font-size:1rem;
  font-weight: 700;
  color:#333;
}
.item .time,.item .yuan{
  font-size:.6rem;
  color:#444;
}
.item .yuan{
  font-size:.6rem;
  text-decoration: line-through;
}
  .img{
    width:100%;
    height:9rem;
    position: relative;
  }
  .img img{
    border-radius: 1rem;
    width:100%;
  }
</style>
