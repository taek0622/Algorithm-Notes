//
//  File.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/10.
//

import Foundation

class problemETC: Solvable {
    public init() {}

    public func run() {
        problem3()
    }

    private func problem1() {
        let N = Int(readLine()!)!
        var objects = [[String: String]]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: ",").map { String($0) }
            var tagArray = [String: String]()

            for idx in 0..<input.count {
                let tags = input[idx].split(separator: "=").map { String($0).trimmingCharacters(in: .whitespaces) }
                tagArray[tags[0]] = tags[1]
            }
            objects.append(tagArray)
        }
    }

    private func problem2() {
        let M = Int(readLine()!)!
        var tanks = [(Int, Int, Int)]()
        var minValue = 15000
        var minTank = (50, 50, 50)

        for width in 1...50 {
            for depth in 1...50 {
                for height in 1...50 {
                    if width * depth * height >= M {
                        tanks.append((width, depth, height))
                    }
                }
            }
        }

        for tank in tanks {
            let newValue = (tank.0 * tank.1 + tank.1 * tank.2 + tank.2 * tank.0) * 2

            if newValue < minValue {
                minValue = newValue
                minTank = (tank.0, tank.1, tank.2)
            }
        }

        print("\(minTank.0) \(minTank.1) \(minTank.2)")
    }

    private func problem3() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        let rand = Array(0...NM[1]-1)
        var seq = [[Int]]()
        var counter = [Int]()
        var permutations = [(Int, [Int])]()

        for i in stride(from: NM[0]-1, through: 0, by: -1) {
            for beforeJ in rand {
                var a = Array(0...NM[0]-1)
                let j = beforeJ % (i + 1)

                let temp = a[i]
                a[i] = a[j]
                a[j] = temp

                if seq.contains(a) {
                    counter[seq.firstIndex(of: a)!] += 1
                } else {
                    seq.append(a)
                    counter.append(1)
                }
            }
        }

        for idx in 0..<counter.count {
            permutations.append((counter[idx], seq[idx]))
        }

        permutations.sort { $0.0 > $1.0 }

        print(permutations)
    }
}
