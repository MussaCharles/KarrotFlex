import UIKit

import FlexLayout

// MARK: - Spacer

@discardableResult
public func FlexSpacer(_ flex: Flex, width: CGFloat) -> Flex {
  return flex.addItem().width(width)
}

@discardableResult
public func FlexSpacer(_ flex: Flex, height: CGFloat) -> Flex {
  return flex.addItem().height(height)
}

// MARK: - Row

@discardableResult
public func FlexRow(_ flex: Flex, _ builder: @escaping (Flex) -> Void) -> Flex {
  return flex.addItem().direction(.row).define {
    builder($0)
  }
}

// MARK: - Column

@discardableResult
public func FlexColumn(_ flex: Flex, _ builder: @escaping (Flex) -> Void) -> Flex {
  return flex.addItem().direction(.column).define {
    builder($0)
  }
}

// MARK: - Item

@discardableResult
public func FlexItem(_ flex: Flex, view: UIView) -> Flex {
  return flex.addItem(view)
}

// MARK: - Overlay

@discardableResult
public func FlexOverlay(_ flex: Flex, _ overlay: @escaping (Flex) -> Flex) -> Flex {
  return flex.define {
    overlay($0).position(.absolute)
  }
}

// MARK: - Ratio

@discardableResult
public func FlexRatio(_ flex: Flex, view: UIView, ratio: CGFloat) -> Flex {
  return flex
    .addItem(view)
    .aspectRatio(ratio)
}
