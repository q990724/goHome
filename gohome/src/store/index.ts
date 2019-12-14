import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    // 首页选项卡
    indexActive : 0,
    // 是否隐藏密码
    isHidePassword: true
  },
  getters: {
    getIndexActive(state) {
      return state.indexActive;
    },
    getIsHidePassword(state) {
      return state.isHidePassword;
    }
  },
  mutations: {
    setIndexActive(state,val) {
      state.indexActive = val;
    },
    setIsHidePassword(state) {
      state.isHidePassword = !state.isHidePassword;
      console.log(state.isHidePassword);
    }
  },
  actions: {
  },
  modules: {
  }
})
