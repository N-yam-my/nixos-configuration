#import "@local/myStyle:1.0.0" : *
#show : init-subfile.with(
  // font-args : arguments(),
  // text-args : arguments(),
  // par-args : arguments(),
  // block-args : arguments(),
  // enable-chapter: true
)
#show : workarounds.with()
#import "@local/myPackages:1.0.0" : *
#show : packageConfig.with()
#import "@local/myUtils:1.0.0" : *
// #import "util.typ" : * // for loading local utility or modification
{{_cursor_}}
