import SwiftUI

public extension ZStack where Content == Never {
  static func topLeading<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
    .init(alignment: .topLeading, content: content)
  }

  static func top<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. top, content: content)
  }

  static func topTrailing<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. topTrailing, content: content)
  }

  static func leading<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. leading, content: content)
  }

  static func center<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. center, content: content)
  }

  static func trailing<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. trailing, content: content)
  }

  static func bottomLeading<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. bottomLeading, content: content)
  }

  static func bottom<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. bottom, content: content)
  }

  static func bottomTrailing<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. bottomTrailing, content: content)
  }

  static func leadingLastTextBaseline<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. leadingLastTextBaseline, content: content)
  }

  static func trailingFirstTextBaseline<Content>(
     @ViewBuilder content: @escaping () -> Content
  ) -> ZStack<Content> {
     .init(alignment:. trailingFirstTextBaseline, content: content)
  }
}
