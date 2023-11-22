import router from '@ohos.router'
@Entry
@Component
struct Page3 {
  build() {
    Row() {
      Column() {
        Text('Page 3')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .width('100%')
          .textAlign(TextAlign.Center)
        Row(){
          Button('返回')
            .type(ButtonType.Normal)
            .width(100)
            .margin({right:10})
            .onClick(()=>{
              router.back(); //使用back返回，不会重新load界面
            })
          Button('返回首页')
            .type(ButtonType.Normal)
            .width(100)
            .backgroundColor("gray")
            .onClick(()=>{
              router.back({url:'pages/Index'})
            })
        }
        .width('100%')
        .margin({top:10})
        .padding({left:80})
        .alignItems(VerticalAlign.Center)

      }
      .width('100%')
    }
    .height('100%')
  }
}