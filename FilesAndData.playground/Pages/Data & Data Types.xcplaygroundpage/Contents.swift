import Foundation

let age: UInt8 = 255
MemoryLayout.size(ofValue: age)
MemoryLayout<UInt8>.size
UInt8.min
UInt8.max

let height: Int8 = 127
MemoryLayout.size(ofValue: height)
Int8.min
Int8.max


let sixteen: UInt16 = 65_535
MemoryLayout.size(ofValue: sixteen)
UInt16.min
UInt16.max
Int16.min
Int16.max

let thirtyTwo: UInt32 = 4_294_967_295
MemoryLayout.size(ofValue: thirtyTwo)
UInt32.min
UInt32.max
Int32.min
Int32.max

let sixtyFour: UInt64 = 18_446_744_073_709_551_615
MemoryLayout.size(ofValue: sixtyFour)
UInt64.min
UInt64.max
Int64.min
Int64.max

let justInt: Int = 9_223_372_036_854_775_807
MemoryLayout.size(ofValue: justInt)
UInt.min
UInt.max
Int.min
Int.max



let weight: Float = 154.5
MemoryLayout.size(ofValue: weight)
Float.leastNormalMagnitude
Float.greatestFiniteMagnitude


let earthRadius: Double = 3958
MemoryLayout.size(ofValue: earthRadius)
Double.leastNormalMagnitude
Double.greatestFiniteMagnitude


let ageBinary: UInt8 = 0b0010_0000
let ageBinaryNegative: Int8 = -0b0010_0000
let weightHexadecimal: UInt16 = 0x9B
let weightHexadecimalNegative: Int16 = -0x9B


let favoriteBytes: [UInt8] = [
    240,    159,    152,    184,
    240,    159,    152,    185,
    0b1111_0000, 0b1001_1111, 0b1001_1000, 186,
    0xF0,   0x9F,   0x98,   187
]

MemoryLayout<UInt8>.size * favoriteBytes.count


// Saving Data

let favoriteBytesData = Data(favoriteBytes)

let favoriteBytesURL = URL(fileURLWithPath: "FavoriteBytes", relativeTo: FileManager.documentDirectoryURL)

try favoriteBytesData.write(to: favoriteBytesURL)
let saveFavoriteBytesData = try Data(contentsOf: favoriteBytesURL)

let savedFavoriteBytes = Array(saveFavoriteBytesData)

favoriteBytes == savedFavoriteBytes
favoriteBytesData == saveFavoriteBytesData


// String
try favoriteBytesData.write(to: favoriteBytesURL.appendingPathExtension("txt"))
let string = String(data: saveFavoriteBytesData, encoding: .utf8)!


let catsURL = URL(fileURLWithPath: "Cats.txt", relativeTo: FileManager.documentDirectoryURL)
try string.write(to: catsURL, atomically: true, encoding: .utf8)
let catsData = try Data(contentsOf: catsURL)
let catString = String(data: catsData, encoding: .utf8)

