
import router from '@ohos.router';
import { PageHand } from '../comps/PageHand';
let testImgSrc  = 'https://upfile-drcn.platform.hicloud.com/FileServer/image/1000.Yi-d-wDazHrcjzUY_Th6rw.CWIAsHQPbFWr2rXoWNLcNe7lYvT3XRoin5M3VdbN4QVDQrO5XiAqARVQWkh1tfW2B1yKBLB8LEbT-5YjpEjzODkIM6-Oi9fGNIYddm3tEtDPuba5Aw.jpeg';


@Entry
@Component
struct Img {
  @State message: string = 'Hello World';
  build() {
    Column(){
      PageHand({title:"图片控件练习"})
      Column(){
        Text("本地图片")
          .height('10%').fontSize(20)
        Image($r("app.media.t01"))
          .height('80%').width('100%')
          .objectFit(ImageFit.Auto)
          .backgroundColor(0xCCCCCC)
      }.height('50%')
      Column() {
        /**
         * 需要在module.json5文件中申明网络访问权限
         {
           "module" : {
             "requestPermissions":[
               {
                  "name": "ohos.permission.INTERNET"
               }
             ]
           }
         }
         如果不开启，IDE预览可以，但是模拟器不会加载图片。
         */
        Text("网络图片")
          .height('10%').fontSize(20)
        Image(testImgSrc)
          .height('90%').width('100%')
      }.height('50%')
    }
  }
}