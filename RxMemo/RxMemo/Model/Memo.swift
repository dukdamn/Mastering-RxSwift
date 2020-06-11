//
//  Memo.swift
//  RxMemo
//
//  Created by 황정덕 on 2020/06/11.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import Foundation

struct Memo: Equatable {
  var content:String
  var insertDate:Date
  var identify:String
  init(content: String, insertDate: Date = Date()) {
    self.content = content
    self.insertDate = insertDate
    self.identify = "\(insertDate.timeIntervalSinceReferenceDate)"
  }
  init(orginal: Memo, updatedContent: String) {
    self = orginal
    self.content = updatedContent
  }
}
