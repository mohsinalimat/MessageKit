//
//  TextMessageModel.swift
//  MessageKit
//
//  Created by ChenHao on 16/3/3.
//  Copyright © 2016年 HarriesChen. All rights reserved.
//

import Foundation

public protocol TextMessageModelProtocol: DecoratedMessageModelProtocol {

    var text: String { get }
}

open class TextMessageModel: TextMessageModelProtocol {

    open let messageModel: MessageModelProtocol
    open let text: String
    open var uid: String { return self.messageModel.uid }

    public init(messageModel: MessageModelProtocol, text: String) {
        self.messageModel = messageModel
        self.text = text
    }
}
