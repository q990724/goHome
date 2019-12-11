import Config from "../config";

class User {
  private prev: string = "/user";

  //登录
  public login(uname: string, upwd: string): Promise<any> {
    return new Promise((resolve, reject) => {
      (async () => {
        try {
          var result: any = await Config.axios({
            url: this.prev + "/login",
            method: "post",
            data: `uname=${uname}&upwd=${upwd}`
          });
          resolve(result.data);
        } catch (error) {
          reject(error);
        }
      })();
    });
  }

  //发送验证码
  public verification(email: string): Promise<any> {
    return new Promise((resolve,reject)=>{
      (async ()=>{
        try {
          var result = await Config.axios({
            url : this.prev + "/verification",
            method : "post",
            data : `email=${email}`
          });
          if(result.data.code == 200){
            resolve(true);
          }else{
            resolve(false);
          }
        } catch (error) {
          reject(error);
        }
      })()
    });
    
  }

  //注册
  public register(obj: any): Promise<any> {
    return new Promise((resolve,reject) => {
      (async ()=>{
        try {
          var result = await Config.axios(
          {
            url : this.prev + "/register",
            method : "post",
            data : `uname=${obj.uname}&upwd=${obj.upwd}&email=${obj.email}&email_text=${obj.email_text}`
          });
          resolve(result.data);  
        } catch (error) {
          reject(error);
        }        
      })()
    });
  }
}

export default User;
