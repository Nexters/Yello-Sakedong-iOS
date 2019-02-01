//
//  NSLayoutConstraint+.swift
//  YelloSakedong
//
//  Created by Presto on 02/02/2019.
//  Copyright © 2019 nexters. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
  /// multiplier 변경하기.
  func changedMultiplier(to value: CGFloat) -> NSLayoutConstraint {
    let constraint = NSLayoutConstraint(
      item: firstItem as Any,
      attribute: firstAttribute,
      relatedBy: relation,
      toItem: secondItem,
      attribute: secondAttribute,
      multiplier: value,
      constant: constant
    )
    constraint.priority = priority
    constraint.shouldBeArchived = shouldBeArchived
    constraint.identifier = identifier
    NSLayoutConstraint.deactivate([self])
    NSLayoutConstraint.activate([constraint])
    return constraint
  }
}
