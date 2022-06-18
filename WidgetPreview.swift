import SwiftUI
import WidgetKit

struct WidgetPreview: ViewModifier {
    var supportedFamilies:[WidgetFamily]?
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            let deviceResolutionHeight = geometry.size.height + geometry.safeAreaInsets.top + geometry.safeAreaInsets.bottom
            HStack {
                VStack {
                    if supportedFamilies?.contains(.systemSmall) == true || supportedFamilies == nil {
                        ZStack {
                            switch deviceResolutionHeight {
                            case 896:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 169, height: 169).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 736:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 159, height: 159).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 844:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 158, height: 158).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 667:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 148, height: 148).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 768,568:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 141, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 810:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 146, height: 146).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 780,820: 
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 155, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 834:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 150, height: 150).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 1024,926: 
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 170, height: 170).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            default:
                                content.environment(\.widgetFamily, .systemSmall).frame(width: 141, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            }
                        }
                    }
                    if supportedFamilies?.contains(.systemMedium) == true || supportedFamilies == nil {
                        ZStack {
                            switch deviceResolutionHeight {
                            case 926:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 364, height: 170).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 896:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 360, height: 169).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 736:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 348, height: 157).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 844:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 338, height: 158).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 812:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 329, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 667:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 321, height: 148).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 780:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 329, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 568:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 292, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 768:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 305.5, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 810:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 320.5, height: 146).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 820: 
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 342, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 834: 
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 327.5, height: 150).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 1024: 
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 378.5, height: 170).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            default:
                                content.environment(\.widgetFamily, .systemMedium).frame(width: 292, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            }
                        }
                    }
                    if supportedFamilies?.contains(.systemLarge) == true || supportedFamilies == nil{
                        ZStack {
                            switch deviceResolutionHeight {
                            case 926:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 364, height: 382).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 896:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 360, height: 379).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 736:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 348, height: 357).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 844:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 338, height: 354).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 812:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 329, height: 345).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 667:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 321, height: 324).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 780:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 329, height: 345).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 568:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 292, height: 311).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 768:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 305.5, height: 305.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 810:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 320.5, height: 320.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 820: 
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 342, height: 342).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 834: 
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 327.5, height: 327.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 1024: 
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 378.5, height: 378.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            default:
                                content.environment(\.widgetFamily, .systemLarge).frame(width: 292, height: 311).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            }
                        }
                    }
                }
                if supportedFamilies?.contains(.systemExtraLarge) == true || supportedFamilies == nil {
                    ZStack {
                        switch deviceResolutionHeight {
                        case 768:
                            content.environment(\.widgetFamily, .systemExtraLarge).frame(width: 634.5, height: 305.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 810:
                            content.environment(\.widgetFamily, .systemExtraLarge).frame(width: 669, height: 320.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 834: 
                            content.environment(\.widgetFamily, .systemExtraLarge).frame(width: 682, height: 327.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 820: 
                            content.environment(\.widgetFamily, .systemExtraLarge).frame(width: 715.5, height: 342).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 1024: 
                            content.environment(\.widgetFamily, .systemExtraLarge).frame(width: 795, height: 378.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        default:
                            Text("")
                        }
                    }
                }
            }
            .frame(width: geometry.size.width, height: deviceResolutionHeight)
        }
    }
}
extension WidgetFamily: EnvironmentKey {
    public static var defaultValue: WidgetFamily = .systemMedium
}
extension EnvironmentValues {
    var widgetFamily: WidgetFamily {
        get { self[WidgetFamily.self] }
        set { self[WidgetFamily.self] = newValue }
    }
}
