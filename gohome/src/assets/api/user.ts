import Config from "../config";

class User {
  private prev: string = "/user";

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
}

export default User;
