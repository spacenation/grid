import Foundation
import SwiftUI

public struct GridItemPreferences: Equatable {    
    public struct Key: PreferenceKey {
        public static var defaultValue: [GridItemPreferences] = []
        
        public static func reduce(value: inout [GridItemPreferences], nextValue: () -> [GridItemPreferences]) {
            value.append(contentsOf: nextValue())
        }
    }
    
    public let index: Int
    public let bounds: CGRect
}
