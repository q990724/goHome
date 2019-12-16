<template>
  <div id="searchCity">
    <van-nav-bar title="在线搜索" left-text="返回" left-arrow @click-left="back" />
    <van-search placeholder="请输入搜索关键词" v-model="value" />
    <div class="result-list" v-if="resultList.length > 0">
      <ul >
        <li v-for="(item,i) of resultList" :key="i">
          <div>
            <img src="../../assets/images/find/city/c1.jpg" width="60" height="60">
            <p>{{item.hname}}</p>
          </div>
          <van-icon name="arrow" />
        </li>
      </ul>
      <h4 style="text-align:right;">查找到{{resultList.length}}条记录 耗时: {{searchTime}}毫秒</h4>
    </div>
  </div>
</template>
<script>
import result from "./result"
export default {
  data() {
    return {
      value: "",
      result: result,
      resultList: [],
      searchTime: 0
    }
  },
  watch: {
    value() {
      let start = new Date().getTime();
      this.resultList = [];
      if(this.value.length <= 0) return;
      setTimeout(()=>{
        this.result.forEach(e => {
          if(e.hname.indexOf(this.value) != -1){
            this.resultList.push(e);
          }
        });
        this.searchTime = new Date().getTime() - start;
      },300);
    }
  },
  methods: {
    back() {
      this.$router.push("/");
      this.$store.commit("setIndexActive",0);
    }
  }
}
</script>
<style scoped>
  #searchCity .result-list{
    padding:0 1rem;
  }
  #searchCity ul{
    padding: 1rem;
    border-radius: .3125rem;
    border: 1px solid #ddd;
    box-shadow: 0 10px 15px 0px #ddd;
  }

  #searchCity ul li{
    border-bottom: 1px solid #eee;
    padding: 1rem;
    display: flex;
    align-items: center;
    margin-bottom: .625rem;
    border-radius: .625rem;
    justify-content: space-between;
  }

  #searchCity ul li>div{
    display: flex;
  }

  #searchCity ul li:last-child{
    margin: 0;
  }

  #searchCity ul li img{
    margin-right: 1rem;
  }

</style>
