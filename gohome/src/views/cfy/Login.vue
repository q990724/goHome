<template>
  <div class="login">
    <div class="title">
      <van-nav-bar title="登录" left-text="返回" left-arrow />
    </div>
    <div class="inputArea">
      <h5>GoHome在线登录</h5>
      <van-cell-group>
        <van-field
          v-model="username"
          required
          clearable
          label="用户名"
          right-icon="question-o"
          placeholder="请输入用户名"
        />
        <van-field
          v-model="password"
          type="password"
          label="密码"
          placeholder="请输入密码"
          required
        />
      </van-cell-group>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";
export default Vue.extend({
  data() {
    return {
      username: "",
      password: ""
    };
  },
  methods: {}
});
</script>

<style scoped lang="scss">
.inputArea {
  padding: 0 1.25rem;
}
</style>
