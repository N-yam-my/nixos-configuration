#import "@local/myStyle:1.0.0" : *
#show : init.with(
  title : [{{_input_:title:Title}}],
  author : "{{_input_:author:Nyammy}}",
  // titlefmt : x => block[#text(size : 22pt)[#x]],
  // titlefmt : x => {},
  // font-title : none,
  // title-pagebreak : false,
  // authorfmt : x => block[#text(size : 16pt)[#x]],
  // authorfmt : x => {},
  // page-args : arguments(
  //   width : 182mm,
  //   height : 257mm,
  //   header-ascent : 0%,
  //   header : [
  //     #context {
  //       set text(size: 10pt)
  //       let t = document
  //         .title
  //         .text
  //         .split(" ")
  //       for (i, item) in t.enumerate() {
  //         if i > 0 { h(1fr) }
  //         item
  //       }
  //       linebreak()
  //       [#h(1fr)#document.author.join("、")]
  //   }],
  //   numbering: "1 / 1",
  // ),
  kihon-hanmen : arguments(
    line-length : 40,
    number-of-lines : 38
  ),
  // font-args : arguments(),
  // text-args : arguments(),
  // par-args : arguments(),
  // block-args : arguments(),
  // enable-chapter: true,
  // before-title: place(
  //   rect(width : 100%, height : 100%, fill : aqua.mix(white))
  // )
)
#show : workarounds.with()
#import "@local/myPackages:1.0.0" : *
#show : packageConfig.with()
#import "@local/myUtils:1.0.0" : *
{{_cursor_}}
