//
//  1700.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1700
//  알고리즘 분류: 그리디 알고리즘

import Shared

public struct BOJ1700: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1114B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var stuffs = readLine()!.split(separator: " ").map { Int($0)! }
        var multitap = Array(repeating: 0, count: NK[0])
        var count = 0
        stuffs.reverse()

        while !stuffs.isEmpty {
            let stuff = stuffs.removeLast()

            if multitap.contains(0) {
                if !multitap.contains(stuff) {
                    multitap[multitap.firstIndex(of: 0)!] = stuff
                }

                continue
            }

            if !multitap.contains(stuff) {
                var min = stuffs.count + 1
                var changingStuff = 0

                for plug in multitap {
                    if !stuffs.contains(plug) {
                        changingStuff = plug
                        break
                    }

                    if stuffs.lastIndex(of: plug)! < min {
                        min = stuffs.lastIndex(of: plug)!
                    }
                }

                if min == stuffs.count + 1 {
                    multitap[0] = stuff
                } else if changingStuff != 0 {
                    multitap[multitap.firstIndex(of: changingStuff)!] = stuff
                } else {
                    multitap[multitap.firstIndex(of: stuffs[min])!] = stuff
                }

                count += 1
            }
        }

        print(count)
    }
}
