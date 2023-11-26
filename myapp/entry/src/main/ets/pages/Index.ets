import router from '@ohos.router'

@Entry
@Component
struct Index {
  build() {
    Column() {
        Text('HarmonyOS ArkTS 学习')
        .width('100%').padding({bottom:5}).textAlign(TextAlign.Center)
        .fontSize(24).fontFamily($r('app.string.Huawei_Font'))
        Text('基础控件')
          .width('100%').padding({bottom:5})
          .fontSize(18).fontFamily($r('app.string.Huawei_Font'))
        Row(){
          Button("文本")
            .width(80).height(22).fontSize(12).margin({right:5})
            .onClick(()=>{ router.pushUrl({url:'pages/base/inputs/InputIndex'}) })
          Button("图片")
            .width(80).height(22).fontSize(12).margin({right:5})
            .onClick(()=>{ router.pushUrl({url:'pages/base/images/ImageIndex'}) })
          Button("跳转")
            .width(80).height(22).fontSize(12).margin({right:5})
            .onClick(()=>{ router.pushUrl({url:'pages/base/goto/GoPageIndex'}) })
        }
        .width('100%').padding({top:5,bottom:10})

        Text('作业')
          .width('100%')
          .fontSize(18)
          .fontFamily($r('app.string.Huawei_Font'))
        Row() {
          Button("待办事项")
            .width(80)
            .height(22)
            .fontSize(12)
            .margin({ right: 5 })
            .onClick(() => {
              router.pushUrl({ url: 'pages/demo/todo/TodoIndex' })
            })
        }
        .width('100%').padding({top:5,bottom:10})
    }
    .padding(10)
  }
}