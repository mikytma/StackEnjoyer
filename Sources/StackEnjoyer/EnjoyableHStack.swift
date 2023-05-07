import SwiftUI

public struct EnjoyableHStack<Content> {
  let alignment: VerticalAlignment?
  let spacing: CGFloat?
  @ViewBuilder let content: () -> Content
}

public extension EnjoyableHStack {
  func spacing<Content>(
    _ spacing: CGFloat?,
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    .init(alignment: alignment, spacing: spacing, content: content)
  }
}

extension EnjoyableHStack: View where Content: View {
  public var body: some View {
    if let alignment = alignment {
      SwiftUI.HStack(alignment: alignment, spacing: spacing, content: content)
    } else {
      SwiftUI.HStack(spacing: spacing, content: content)
    }
  }
}

public extension EnjoyableHStack where Content == EmptyView {
  static var top:  Self {
    .init(alignment: .top, spacing: nil) {}
  }
  
  static var center: Self {
    .init(alignment: .center, spacing: nil) {}
  }
  
  static var bottom: Self {
    .init(alignment: .bottom, spacing: nil) {}
  }
  
  static var firstTextBaseline: Self {
    .init(alignment: .firstTextBaseline, spacing: nil) {}
  }
  
  static var lastTextBaseline: Self {
    .init(alignment: .lastTextBaseline, spacing: nil) {}
  }

  static func top<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    .init(alignment: .top, spacing: nil, content: content)
  }

  static func center<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    .init(alignment: .center, spacing: nil, content: content)
  }

  static func bottom<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    .init(alignment: .bottom, spacing: nil, content: content)
  }
  
  static func firstTextBaseline<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    .init(alignment: .firstTextBaseline, spacing: nil, content: content)
  }
  
  static func lastTextBaseline<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    .init(alignment: .lastTextBaseline, spacing: nil, content: content)
  }

  static func spacing<Content>(
    _ spacing: CGFloat?,
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    .init(alignment: nil, spacing: spacing, content: content)
  }
}

public extension HStack where Content == EmptyView {
  static var top: EnjoyableHStack<EmptyView> { .top }
  static var center: EnjoyableHStack<EmptyView> { .center }
  static var bottom: EnjoyableHStack<EmptyView> { .bottom }
  static var firstTextBaseline: EnjoyableHStack<EmptyView> { .firstTextBaseline }
  static var lastTextBaseline: EnjoyableHStack<EmptyView> { .lastTextBaseline }

  static func top<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    EnjoyableHStack.top(content: content)
  }

  static func center<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    EnjoyableHStack.center(content: content)
  }

  static func bottom<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    EnjoyableHStack.bottom(content: content)
  }
  
  static func firstTextBaseline<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    EnjoyableHStack.firstTextBaseline(content: content)
  }
  
  static func lastTextBaseline<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    EnjoyableHStack.lastTextBaseline(content: content)
  }

  static func spacing<Content>(
    _ spacing: CGFloat?,
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableHStack<Content> {
    EnjoyableHStack.spacing(spacing, content: content)
  }
}
