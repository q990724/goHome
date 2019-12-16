<template>
  <div class="register">
    <div class="title">
      <van-nav-bar
        title="注册"
        left-text="返回"
        left-arrow
        @click-left="goLogin"
      />
    </div>
    <div class="inputArea">
      <h5>GoHome注册新用户</h5>
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
        <van-progress
          :pivot-text="pwdStrongText"
          :color="pwdStrongColors[pwdStrongColor]"
          :percentage="pwdStrongCount"
        />
        <van-field
          v-model="email"
          type="text"
          label="邮箱"
          clearable
          placeholder="请输入邮箱"
          required
          class="email"
        />
        <van-field
          v-model="email_text"
          type="text"
          label="邮箱验证码"
          clearable
          center
          placeholder="请输入邮箱验证码"
          required
        >
          <van-button
            slot="button"
            size="small"
            type="primary"
            @click="sendYzm"
            :disabled="!isSend"
          >
            {{ isSend ? "发送验证码" : countDown }}
          </van-button>
        </van-field>
        <van-button plain type="info" block round @click="register" :disabled="!btnActive">
          提交注册
        </van-button>
      </van-cell-group>
    </div>
  </div>
</template>

<script lang="ts">
import User from "../../assets/api/user";
import { Toast } from "vant";
export default {
  data() {
    return {
      userApis: new User(),
      username: "",
      password: "",
      email: "",
      email_text: "",
      pwdStrongCount: 0,
      pwdStrongText: "未填写",
      pwdStrongColor: 0,
      pwdStrongColors: ["#FF4500", "#F4A460", "#6495ED", "#32CD32"],
      isSend: true,
      btnActive: false,
      countDown: 60,
      arr: [
        // require("../")
      ]
    };
  },
  methods: {
    //返回登录
    goLogin() {
      (this as any).$router.push("login");
    },
    //注册
    register() {
      let myThis :any = this;
      let obj = {
        uname : myThis.username,
        upwd : myThis.password,
        email : myThis.email,
        email_text : myThis.email_text
      };
      
      (async ()=>{
        var result = await myThis.userApis.register(obj);
        if(result.code == 200){
          Toast.success(result.msg);
          myThis.$router.push("login");
        }else{
          myThis.email_text = "";
          myThis.password = "";
          Toast.fail(result.msg);
          return;
        }
      })()

    },
    //发送验证码
    sendYzm() {
      let myThis :any = this;

      if(myThis.email.length < 8){
        return;
      }

      myThis.isSend = false;
      // Toast.success("发送成功!");

      //开始计时
      let id = window.setInterval(() => {
        (this as any).countDown--;
        if ((this as any).countDown <= 0) {
          window.clearInterval(id);
          (this as any).isSend = true;
        }
      }, 1000);

      //发送验证码
      myThis.userApis.verification(myThis.email).then((res:any)=>{
        if(res){
          Toast.success("发送成功，请到邮箱查看!");
          myThis.btnActive = true;
        }else{
          Toast.fail("发送错误，请检查邮箱或稍后再试!");
        }
      });

    }
  },
  watch: {
    password(val: string): void {
      if (val.length <= 0) {
        (this as any).pwdStrongCount = 0;
        (this as any).pwdStrongText = "未填写";
        (this as any).pwdStrongColor = 0;
      } else if (val.length < 6) {
        (this as any).pwdStrongCount = 25;
        (this as any).pwdStrongText = "危险";
        (this as any).pwdStrongColor = 0;
      } else if (val.length < 10) {
        (this as any).pwdStrongCount = 50;
        (this as any).pwdStrongText = "合格";
        (this as any).pwdStrongColor = 1;
      } else if (val.length < 12) {
        (this as any).pwdStrongCount = 75;
        (this as any).pwdStrongText = "良好";
        (this as any).pwdStrongColor = 2;
      } else if (val.length < 15) {
        (this as any).pwdStrongCount = 100;
        (this as any).pwdStrongText = "安全";
        (this as any).pwdStrongColor = 3;
      }
    }
  }
};
</script>

<style scoped lang="scss">
.inputArea {
  padding: 0 1.25rem;
}
.email {
  margin-top: 1.5rem;
}
.van-field {
  background-color: #f1f1f1;
  margin-bottom: 1.5rem;
  border-radius: 0.5125rem;
}
</style>
