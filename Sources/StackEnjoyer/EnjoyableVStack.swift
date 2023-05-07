import SwiftUI

public struct EnjoyableVStack<Content> {
  let alignment: HorizontalAlignment?
  let spacing: CGFloat?
  @ViewBuilder let content: () -> Content
}

public extension EnjoyableVStack {
  func spacing<Content>(
    _ spacing: CGFloat?,
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    .init(alignment: alignment, spacing: spacing, content: content)
  }
}

extension EnjoyableVStack: View where Content: View {
  public var body: some View {
    if let alignment = alignment {
      SwiftUI.VStack(alignment: alignment, spacing: spacing, content: content)
    } else {
      SwiftUI.VStack(spacing: spacing, content: content)
    }
  }
}

public extension EnjoyableVStack where Content == EmptyView {
  static var leading: Self {
    .init(alignment: .leading, spacing: nil) {}
  }
  
  static var center: Self {
    .init(alignment: .center, spacing: nil) {}
  }
  
  static var trailing: Self {
    .init(alignment: .trailing, spacing: nil) {}
  }
  
  static func leading<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    .init(alignment: .leading, spacing: nil, content: content)
  }

  static func center<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    .init(alignment: .center, spacing: nil, content: content)
  }

  static func trailing<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    .init(alignment: .trailing, spacing: nil, content: content)
  }

  static func spacing<Content>(
    _ spacing: CGFloat?,
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    .init(alignment: nil, spacing: spacing, content: content)
  }
}

public extension VStack where Content == EmptyView {
  static var leading: EnjoyableVStack<EmptyView> { .leading }
  static var center: EnjoyableVStack<EmptyView> { .center }
  static var trailing: EnjoyableVStack<EmptyView> { .trailing }

  static func leading<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    EnjoyableVStack.leading(content: content)
  }

  static func center<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    EnjoyableVStack.center(content: content)
  }

  static func trailing<Content>(
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    EnjoyableVStack.trailing(content: content)
  }

  static func spacing<Content>(
    _ spacing: CGFloat?,
    @ViewBuilder content: @escaping () -> Content
  ) -> EnjoyableVStack<Content> {
    EnjoyableVStack.spacing(spacing, content: content)
  }
}
