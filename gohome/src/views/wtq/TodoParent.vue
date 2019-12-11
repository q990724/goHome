<template>
  <div id="todo">
    <!-- todo-add -->
    <todo-add></todo-add>
    <!-- todo-list -->
    <ul>
      <todo-list></todo-list>
    </ul>
    <!-- todo-log -->
    
  </div>
</template>
<script>
import todoAdd from '../wtq/todoAdd.vue'
import todoList from '../wtq/todoList.vue'
export default {
  components:{
    "todoAdd" : todoAdd ,
    "todoList": todoList,
  }
}
</script>
<style scoped>

</style>

