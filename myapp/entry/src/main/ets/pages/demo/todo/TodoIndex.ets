import media from '@ohos.multimedia.media'
import router from '@ohos.router'
@Entry
@Component
struct ToDoList {
  build() {
    Column() {
      Row(){
        Text('待办')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .fontFamily($r('app.string.Huawei_Font'))
        Text('返回')
          .width(80)
          .fontSize(12)
          .margin({left:10,top:15})
          .fontColor('#999999')
          .fontFamily('HuaweiFont-Regular')
          .onClick(()=>{
            router.back();
          })
      }.width('100%').height(50).padding(10).margin({bottom:10})
      TodoItem({title:"早上锻炼"})
      TodoItem({title:"约Arch开会，讨论方案"})
      TodoItem({title:"约David晚餐"})
      TodoItem({title:"看电影"})
    }
  }
}

@Component
struct TodoItem{
  @State title: string = "";
  @State isComplete: boolean =false;
  build(){
      Row(){
        Image(!this.isComplete
                ? $r('app.media.ic_public_todo')
                : $r('app.media.ic_public_todo_filled'))
          .width(18).height(18)
        Text(this.title)
          .padding({left:8})
          .fontSize(18)
          .fontFamily($r('app.string.Huawei_Font'))
          .fontColor(this.isComplete?'#999999':'#000000')
          .decoration({
              type:(!this.isComplete?TextDecorationType.None:TextDecorationType.LineThrough),
              color: Color.Black })
      }
      .width('100%')
      .height(38)
      .padding({left:5,right:5})
      .margin({bottom:5})
      .border({width:1, color:'#f5f5f5',style:BorderStyle.Solid,radius:10})
      .onClick(()=>{
        this.isComplete = !this.isComplete;
      })
  }
}