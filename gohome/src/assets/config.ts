import axios, { AxiosStatic } from "axios";

axios.defaults.baseURL = "http://127.0.0.1:5050";
axios.defaults.withCredentials = true;

// var config = {
//   axios : axios
// };

class Config {
  static server:string = "http://127.0.0.1:5050/";
  static axios: AxiosStatic = axios;
}

export default Config;
