<template>
  <div id="todolist">
    <li v-for="(item,i) of lists" :key="i">
      {{item.id}}--{{item.list}}
      <button>删除</button>
    </li>
    <button>删除所选项</button>
  </div>
</template>
<script>
export default {
  data(){
    return{
      lists : [
        {id:1,list:"吃饭"},
        {id:2,list:"睡觉"},
        {id:3,list:"唱歌"},
      ]
    }
  }
}
</script>
<style scoped>

</style>
