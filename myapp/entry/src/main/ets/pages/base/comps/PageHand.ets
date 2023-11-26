import router from '@ohos.router'
@Entry
@Component
export  struct PageHand {
  @State title:string ="这里是标题"
  build() {
    Column(){
      Row(){
        Row(){
          Text(this.title)
            .fontSize(28).fontFamily($r('app.string.Huawei_Font'))
        }.width('60%')
        Row(){
          OptBtn({title:'返回',icon:$r('app.media.ic_public_back')})
            .onClick(()=>{
              router.back();
            })
        }
        .width('40%')
        .padding({left:10,right:10})
        .justifyContent(FlexAlign.End)
      }
      .width('100%').height(30)
    }
    .padding({top:10,right:15,bottom:10,left:15})
  }
}
@Component
struct OptBtn{
  @State title:string = ""
  @State icon:Resource = null
  build(){
    Row(){
      Image(this.icon)
        .width(16).height(16)
        .alt(this.title+' Icon')
        .margin({right:3})
      Text(this.title)
        .fontSize(14)
    }
  }
}