import router from '@ohos.router'
import { PageHand } from '../comps/PageHand'
@Entry
@Component
struct Detail {
  @State message: string = 'Page2'

  build() {
      Column() {
        PageHand({title:"界面跳转"})
        Text('界面2')
          .margin({top:100})
          .fontSize(50).fontFamily($r('app.string.Huawei_Font'))
          .fontWeight(FontWeight.Bold)
        Button('跳转到界面3')
          .margin({top:10})
          .onClick(()=>{
            router.pushUrl({url:'pages/base/goto/GoPage3'})
          })
      }
  }
}