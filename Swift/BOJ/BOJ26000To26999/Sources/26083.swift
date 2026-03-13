//
//  26083.swift
//  BOJ26000To26999
//
//  Created by 김이안 on 3/13/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26083
//  알고리즘 분류: 구현, 많은 조건 분기

import Shared

public struct BOJ26083: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 456ms, 코드 길이: 1316B
        struct Date: Comparable {
            let y: Int
            let m: Int
            let d: Int

            static func < (lhs: Date, rhs: Date) -> Bool {
                if lhs.y != rhs.y { return lhs.y < rhs.y }
                if lhs.m != rhs.m { return lhs.m < rhs.m }
                return lhs.d < rhs.d
            }

            func isValid() -> Bool {
                switch self.m {
                    case 1, 3, 5, 7, 8, 10, 12:
                        return 1...31 ~= d
                    case 4, 6, 9, 11:
                        return 1...30 ~= d
                    case 2:
                        if y % 4 == 0 {
                            return 1...29 ~= d
                        } else {
                            return 1...28 ~= d
                        }
                    default:
                        return false
                }
            }
        }

        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let today = Date(y: input[0], m: input[1], d: input[2])
        let N = Int(readLine()!)!

        for _ in 0..<N {
            var isSafe = true
            var isValid = false
            let ABC = readLine()!.split(separator: " ").map { Int($0)! }
            let ymd = Date(y: ABC[0], m: ABC[1], d: ABC[2])
            let dmy = Date(y: ABC[2], m: ABC[1], d: ABC[0])
            let mdy = Date(y: ABC[2], m: ABC[0], d: ABC[1])

            for date in [ymd, dmy, mdy] where date.isValid() {
                isSafe = isSafe && today <= date
                isValid = true
            }

            print(isValid ? (isSafe ? "safe" : "unsafe") : "invalid")
        }
    }
}
