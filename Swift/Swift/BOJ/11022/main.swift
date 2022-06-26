//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/06/27.
//

// 메모리: 69104KB, 시간: 8ms, 코드 길이: 196B
let T = Int(readLine()!)!

for i in 1...T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    print("Case #\(i): \(input[0]) + \(input[1]) = \(input[0] + input[1])")
}
