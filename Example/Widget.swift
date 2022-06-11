import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }
    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}
struct AwesomeQuotesWidgetEntryView:View {
    var entry: Provider.Entry
    var body: some View {
        Image("Widget")
            .resizable()
    }
}
struct AwesomeQuotesWidget: Widget {
    let kind: String = "AwesomeQuotesWidget"
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            AwesomeQuotesWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall])
    }
}


struct AwesomeQuotesWidget_Previews: PreviewProvider {
    static var previews: some View {
        
        AwesomeQuotesWidgetEntryView(entry: Provider.Entry(date: Date()))
            .modifier(WidgetPreview(supportedFamilies: [.systemSmall]))
        .preferredColorScheme(.light)
        .previewDevice("iPad mini (8.3-inch)")
    }
}
