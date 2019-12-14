<template>
  <div class="login">
    <div class="title">
      <van-nav-bar title="登录" left-text="返回" left-arrow @click-left="back"/>
    </div>
    <div class="inputArea">
      <h5>GoHome在线登录</h5>
      <van-cell-group>
        <van-field
          v-model="username"
          required
          clearable
          label="用户名"
          placeholder="请输入用户名"
        />
        <van-field
          v-model="password"
          type="password"
          label="密码"
          clearable
          placeholder="请输入密码"
          required
        />
      </van-cell-group>
      <van-button
        plain
        type="info"
        block
        round
        @click="login"
        :disabled="!isActive"
      >
        登录
      </van-button>
      <div class="other-login">
        <a href="javascript:;" @click="otherLogin">其他登录方式</a>
        <a href="javascript:;" @click="register">注册新用户</a>
        <a href="javascript:;" @click="forget">忘记密码？</a>
      </div>
    </div>
    <transition name="van-slide-left">
      <div class="icon-list" v-show="show">
        <div class="item">
          <img
            src="http://img5.imgtn.bdimg.com/it/u=1758493213,3179218484&fm=26&gp=0.jpg"
            width="30"
          />
        </div>
        <div class="item">
          <img
            src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3689593137,3953434942&fm=26&gp=0.jpg"
            width="30"
          />
        </div>
        <div class="item">
          <img
            src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=241288357,1331462276&fm=26&gp=0.jpg"
            width="30"
          />
        </div>
        <div class="item">
          <img
            src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575971767002&di=715eb87e9d7441d6206546742e4645d5&imgtype=0&src=http%3A%2F%2Ftag.xinyu1978.com%2Fxinyuimg%2F20190107%2F2082ca4db353b85446fcaac29e3dce7d.png"
            width="30"
          />
        </div>
      </div>
    </transition>
  </div>
</template>

<script lang="ts">
// import Vue from "vue";
import User from "../../assets/api/user";
import { Toast } from "vant";
export default {
  data() {
    return {
      username: "",
      password: "",
      show: false,
      userApis: new User(),
      isActive: true,
      arr: [
        // require("../")
      ],
    };
  },
  methods: {
    //登录
    login() {
      let myThis:any = this;
      myThis.isActive = false;
      myThis.userApis.login(myThis.username, myThis.password).then((res: any) => {
        if (res.code == 200) {
          Toast.success(res.msg);
          sessionStorage.setItem("user",JSON.stringify(res.result));
          sessionStorage.setItem("login_time",JSON.stringify(new Date().getTime()));
          myThis.$router.push("/");
          myThis.$store.commit("setIndexActive",3);
          // 跳转到个人中心
        } else if (res.code == 300) {
          Toast.fail(res.msg);
        }
        myThis.isActive = true;
      });
    },
    //显示其他登录方式
    otherLogin(): void {
      let myThis:any = this;
      myThis.show = !myThis.show;
    },
    //注册
    register(): void {
      let myThis:any = this;
      myThis.$router.push("register");
    },
    //忘记密码
    forget(): void {},
    //返回首页
    back(): void {
      (this as any).$router.push("/");
    }
  }
};
</script>

<style scoped lang="scss">
.inputArea {
  padding: 0 1.25rem;
}
.van-field {
  background-color: #f2f2f2;
  margin-bottom: 1rem;
  border-radius: 0.5125rem;
}
.v-enter,
.v-leave-to {
  opacity: 0;
  transform: translateX(150px);
}

/* v-enter-active 【入场动画的时间段】 */
/* v-leave-active 【离场动画的时间段】 */
.v-enter-active,
.v-leave-active {
  transition: all 0.8s ease;
}
.icon-list {
  display: flex;
  justify-content: space-between;
  padding: 2rem 3rem;
}
.other-login {
  display: flex;
  justify-content: space-between;
  text-align: center;
  margin-top: 0.625rem;
  a {
    color: rgb(58, 121, 214);
  }
}
</style>
