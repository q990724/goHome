import Config from "../config";

class Home {
  private prev: string = "/home";

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
}

export default Home;