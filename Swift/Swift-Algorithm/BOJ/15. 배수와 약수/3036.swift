//
//  3036.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/12.
//

// 문제: https://www.acmicpc.net/problem/3036

class BOJ3036: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 453B
        let N = Int(readLine()!)!
        let radii = readLine()!.split(separator: " ").map { Int(String($0))! }

        for idx in 1..<N {
            if radii[0] % radii[idx] == 0 {
                print("\(radii[0]/radii[idx])/1")
            } else {
                let divisor = findDivisor(radii[0], radii[idx])
                print("\(radii[0]/divisor)/\(radii[idx]/divisor)")
            }
        }

        func findDivisor(_ num1: Int, _ num2: Int) -> Int {
            return num1 % num2 == 0 ? num2 : findDivisor(num2, num1 % num2)
        }
    }
}
