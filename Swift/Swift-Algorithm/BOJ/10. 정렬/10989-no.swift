//
//  10989.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/04.
//

// 문제: https://www.acmicpc.net/problem/10989
import Foundation
class BOJ10989: Solvable {
    func run() {
        solution1()
    }
// 일반적인 방법으로는 해결 불가, Counting Sort로도 해결 안됨
    // FileIO로 해결해야함.
    // 메모리: KB, 시간: ms, 코드 길이: 173B
    private func solution1() {
        let N = Int(readLine()!)!
        var input = [Int]()
        var counter = Array(repeating: 0, count: 11)
        var output = Array(repeating: 0, count: N)
        var result = ""

        for _ in 0..<N {
            input.append(Int(readLine()!)!)
        }
//        print("input: \(input)")

//        let start = CFAbsoluteTimeGetCurrent()
        for idx in input {
            counter[idx] += 1
        }

        for idx in 1..<counter.count {
            counter[idx] += counter[idx - 1]
        }

//        print("original counter: \(counter)")
//        print("original output: \(output)\n")

        for num in input {
            counter[num] -= 1
            output[counter[num]] = num
//            print("counter: \(counter)")
//            print("output: \(output)\n")
        }

        for num in output {
            result += "\(num)\n"
        }

        print(result)
//        print(CFAbsoluteTimeGetCurrent() - start)

        
//        let input = [1, 3, 2, 4, 4]
//        var counter = Array(repeating: 0, count: 6)
//        var output = Array(repeating: 0, count: input.count)
//
//        for idx in input.indices {
//            counter[input[idx]] += 1
//        }
//
//        print("input: \(input)")
//        print("counter: \(counter)")
//
//        for idx in 1..<counter.count {
//            counter[idx] += counter[idx - 1]
//        }
//
//        print("counter(add): \(counter)")
//
//        for num in input {
//            counter[num] -= 1
//            output[counter[num]] = num
//            print("output의 \(counter[num])번째 인덱스에 입력 배열 \(num)의 값을 넣음")
//            print("counter[\(num)]: \(counter[num])")
//        }
//
//        print("output: \(output)")

    }
}
