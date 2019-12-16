import Config from "../config";

class Home {
  private prev: string = "/home";

  // 获取城市信息
  public getCities(): Promise<any>{ 
    return new Promise((resolve,reject)=>{
      Config.axios({
        url: this.prev +  "/getCity"
      }).then(res=>{
        resolve(res.data);
      }).catch(err=>{
        reject(err);
      });
    });
  }

  // 获取所有房源信息
  public getHomes(): Promise<any> {
    return new Promise((resolve,reject)=>{
      Config.axios({
        url: this.prev +  "/getHome"
      }).then(res=>{
        resolve(res.data);
      }).catch(err=>{
        reject(err);
      });
    });
  }
}

export default Home;