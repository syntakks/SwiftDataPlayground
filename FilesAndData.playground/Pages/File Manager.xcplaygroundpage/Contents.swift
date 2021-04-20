import Foundation

//let pathSegments = FileManager.documentDirectoryURL.path.split(separator: "/")
//
//for segment in pathSegments {
//    print(segment)
//}


let remindersDataURL = URL(fileURLWithPath: "Reminders", relativeTo: FileManager.documentDirectoryURL)

let stringURL = FileManager.documentDirectoryURL.appendingPathComponent("String").appendingPathExtension("txt")

stringURL.path

let challengeString = "Challenge"
let challengeURL = URL(fileURLWithPath: challengeString, relativeTo: FileManager.documentDirectoryURL).appendingPathExtension("txt")
challengeURL.path
challengeURL.lastPathComponent
