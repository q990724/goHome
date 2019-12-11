<template>
  <div id="todo-add">
    <input v-model="inputArea" type="text" placeholder="输入您要添加的内容">
    <button @click="add">添加</button>
    
  </div>
</template>
<script>
export default {
  data(){
    return{
      inputArea:""
    }
  },
  methods:{
    add(){
      this.inputArea = inputArea
      console.log(this.inputArea)
    }
  }
}
</script>