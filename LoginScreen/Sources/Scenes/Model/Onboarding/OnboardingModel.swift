import Foundation

final class OnboardingModel {
    
    func createModels() -> [Onboarding] {
        return [
            Onboarding(index: 0,
                       title: "Retro occupy",
                       description: "Being the savage's bowsman, that is, the person who pulled the bow-oar in.",
                       imageName: "man"
                      )
        ]
    }
}
