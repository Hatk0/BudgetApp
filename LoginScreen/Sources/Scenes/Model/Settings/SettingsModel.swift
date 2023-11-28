import Foundation

final class SettingsModel {
    
    func createModels() -> [Settings] {
        return [
            Settings(title: "Settings title",
                     subtitle: "Notification",
                     imageName: "mountain.2.circle",
                     version: ""),
            Settings(title: "Notification",
                     subtitle: "Setting status",
                     imageName: "mountain.2.circle",
                     version: ""),
            Settings(title: "Settings title here",
                     subtitle: "Setting status",
                     imageName: "mountain.2.circle",
                     version: ""),
            Settings(title: "Settings title here",
                     subtitle: "Setting status",
                     imageName: "mountain.2.circle",
                     version: ""),
            Settings(title: "Settings title here",
                     subtitle: "Setting status",
                     imageName: "mountain.2.circle",
                     version: ""),
            Settings(title: "About this app",
                     subtitle: "Setting status status",
                     imageName: "mountain.2.circle",
                     version: "v2.0.21"),
        ]
    }
}
