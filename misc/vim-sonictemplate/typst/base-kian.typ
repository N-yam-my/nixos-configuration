#import "@local/myStyle:1.0.0" : *
#show : init-kian.with(
  title : [{{_input_:title?:Title}}],
  author : "{{_input_:author?:Nyammy}}",
  heading : arguments(
    date : "日付",
    year : "年度",
    subject : "科目",
    time : "時間"
  ),
  date : [{{_input_:date?:`#date`}}],
  year : [{{_input_:year?:`#year`}}],
  subject : [{{_input_:subject?`#subject`}}],
  time : (00, 00),
  page-args: arguments(
    // header : [
    //   #context {
    //     let t = document
    //       .title
    //       .text
    //       .split(" ")
    //     [#t.at(0)]
    //     h(1fr)
    //     [#t.at(1)]
    //     linebreak()
    //     
    //     [#h(1fr)#document.author.join("、")]
    //     // [#text.font]
    // }],
    // header-ascent : 50%,
  )
)
#show : workarounds.with()
#import "@local/myPackages:1.0.0" : *
#show : packageConfig.with()
#import "@local/myUtils:1.0.0" : *
{{_cursor_}}
