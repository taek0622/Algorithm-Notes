//
//  3003.swift
//  Swift
//
//  Created by 김민택 on 2022/12/25.
//

// 문제: https://www.acmicpc.net/problem/3003

class BOJ3003 {
    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 242B
//    func run() {
//        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//        let chess = [1, 1, 2, 2, 2, 8]
//
//        var res = [Int]()
//
//        for i in 0..<chess.count {
//            res.append(chess[i] - input[i])
//        }
//
//        res.forEach {
//            print($0, terminator: " ")
//        }
//    }
    
    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 187B
    func run() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let chess = [1, 1, 2, 2, 2, 8]
        
        for i in 0..<chess.count {
            print(chess[i] - input[i], terminator: " ")
        }
    }
}
