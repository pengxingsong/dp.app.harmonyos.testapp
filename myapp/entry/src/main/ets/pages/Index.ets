import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        Text(this.message)
          .width('100%')
          .fontSize(40)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .height('10%')
      Row() {
        Column() {
          Text('to page2')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
            .onClick(()=>{
               router.pushUrl({url:'pages/Page2'})
                 .then(()=>{
                   console.log('执行 then')
                 })
                 .catch(()=>{
                   console.log('执行 catch')
                 })
                 .finally(()=>{
                   console.log('执行 finally')
                 })
            })
          Text('点击可到详情页')
            .fontSize(20)
        }
        .width('50%')
        .height('100%')
        .backgroundColor('#ff0')

        Column() {
          Text("area2")
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
        }
        .width('50%')
        .height('100%')
        .backgroundColor('#f10')
      }
      .width('100%')
      .height('45%')
      Row() {
        Column() {
          Text("area3")
            .width('100%')
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Center)
        }
        .width('100%')
        .height('100%')
      }
      .width('100%')
      .height('45%')
      .backgroundColor("#f5f")
    }
  }
}