import router from '@ohos.router'
import { PageHand } from '../comps/PageHand'
@Entry
@Component
struct Page3 {
  build() {
      Column() {
        PageHand({title:"界面跳转"})
        Text('界面 3')
          .width('100%').margin({top:100})
          .textAlign(TextAlign.Center)
          .fontSize(50).fontWeight(FontWeight.Bold).fontFamily($r('app.string.Huawei_Font'))
        Button('返回首页')
          .margin({top:10})
          .backgroundColor("gray")
          .onClick(()=>{
            router.back({url:'pages/Index'})
          })
      }
  }
}