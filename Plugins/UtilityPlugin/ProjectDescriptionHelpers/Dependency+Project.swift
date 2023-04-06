import Foundation
import ProjectDescription

// MARK: Project
extension TargetDependency {
    public struct Feature {
        public struct Finance {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct Profile {
//            public struct Data {}
//            public struct Domain {}
//            public struct UserInterface {}

        }
        public struct Transport {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct Home {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct BaseDependency {}
    }
    
    public struct Core {
        
    }
    
    public struct CSNetwork {}
    
    public struct ResourceKit {}

    public struct ThirdParty {}
}

public extension TargetDependency.Core {
    static let folderName = "Core"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(name)\(postfix)",
                        path: .relativeToRoot("\(folderName)"))
    }

//    static let Interface = project(name: "Core", isInterface: true)
//    static let Implement = project(name: "Core", isInterface: false)
    
    static let DefaultsStore = project(name: "DefaultsStore", isInterface: true)
    static let RIBsUtil = project(name: "RIBsUtil", isInterface: true)
    static let SuperUI = project(name: "SuperUI", isInterface: true)
}

public extension TargetDependency.ResourceKit {
    static let folderName = "ResourceKit"
    static func project(name: String) -> TargetDependency {
        return .project(target: "\(name)",
                        path: .relativeToRoot("\(folderName)"))
    }

    static let Implement = project(name: "ResourceKit")
}

// MARK: - Features/Finance
public extension TargetDependency.Feature.Finance {
    static let folderName = "Finance"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
    }
}

public extension TargetDependency.Feature.Finance.UserInterface {
    static let Interface = TargetDependency.Feature.Finance.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.Finance.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Finance.Domain {
    static let Interface = TargetDependency.Feature.Finance.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.Finance.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Finance.Data {
    static let Interface = TargetDependency.Feature.Finance.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.Finance.project(name: "Data", isInterface: false)
}

// MARK: - Features/Transport
public extension TargetDependency.Feature.Transport {
    static let folderName = "Transport"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
    }
}

public extension TargetDependency.Feature.Transport.UserInterface {
    static let Interface = TargetDependency.Feature.Transport.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.Transport.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Transport.Domain {
    static let Interface = TargetDependency.Feature.Transport.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.Transport.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Transport.Data {
    static let Interface = TargetDependency.Feature.Transport.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.Transport.project(name: "Data", isInterface: false)
}


// MARK: - Features/Profile
public extension TargetDependency.Feature.Profile {
    static let folderName = "Profile"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
    }
    struct UserInterface {
        public static let Interface = project(name: "UserInterface", isInterface: true)
        public static let Implement = project(name: "UserInterface", isInterface: false)
    }
    
    struct Domain {
        public static let Interface = project(name: "Domain", isInterface: true)
        public static let Implement = project(name: "Domain", isInterface: false)
    }
    
    struct Data {
        public static let Interface = project(name: "Data", isInterface: true)
        public static let Implement = project(name: "Data", isInterface: false)
    }
}

// MARK: - Features/Home
public extension TargetDependency.Feature.Home {
    static let folderName = "Home"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
    }}

public extension TargetDependency.Feature.Home.UserInterface {
    static let Interface = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Home.Domain {
    static let Interface = TargetDependency.Feature.Home.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Home.Data {
    static let Interface = TargetDependency.Feature.Home.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "Data", isInterface: false)
}


// MARK: - Network
public extension TargetDependency.CSNetwork {
    static let folderName = "CSNetwork"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(
            target: "\(name)\(postfix)",
            path: .relativeToRoot("CSNetwork")
        )
    }
    
    static let Interface = project(name: "CSNetwork", isInterface: true)
    static let Implement = project(name: "CSNetwork", isInterface: false)
}

// MARK: - ThirdParty

public extension TargetDependency.ThirdParty {
    static let base = [
        RxSwift,
        RIBs,
    ]
    
    static let RxSwift = TargetDependency.external(name: "RxSwift")
    static let RxRelay = TargetDependency.external(name: "RxRelay")
    static let RxCocoa = TargetDependency.external(name: "RxCocoa")
    static let RIBs = TargetDependency.external(name: "RIBs")
    static let RxGesture = TargetDependency.external(name: "RxGesture")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
    static let Kingfisher = TargetDependency.external(name: "Kingfisher")
}
