@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column({ space: 20 }) {
      Image($r('app.media.icon'))
        .interpolation(ImageInterpolation.High)
        .objectFit(ImageFit.Contain)
        .width(80)
        .height(80)
        .margin({ top: 120 })

      TextInput({ placeholder: '请输入用户名' })
        .height(50)
        .margin({ left: 15, right: 15,top:20 })
      TextInput({ placeholder: '请输入密码' })
        .height(50)
        .margin({ left: 15, right: 15 })
        .type(InputType.Password)
        .showPasswordIcon(true)
      Button('登录')
        .height(50)
        .width('80%')
        .margin({ left: 30, right: 30 ,top:20})
      .onClick(()=>{
        //请求接口，跳转到图片页面
      })


      Row() {
        Checkbox()
        Text('记住我')
          .fontColor('#36d')

      }
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)

    .width('100%')
  }
}