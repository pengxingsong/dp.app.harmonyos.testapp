@Component
export struct Cus1Component{
  @State msg: string ='自写组件 '
  @State count : number = 0;
  build(){
    Row(){
      Text(this.msg + this.count)
        .fontSize(30)
        .margin({top:'20vp'})
        .onClick(()=>{
          this.count++;
        })
    }
  }
}