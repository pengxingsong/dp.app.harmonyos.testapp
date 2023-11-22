import router from '@ohos.router'
@Entry
@Component
struct Detail {
  @State message: string = 'Page2'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            router.pushUrl({url:'pages/Page3'})
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}