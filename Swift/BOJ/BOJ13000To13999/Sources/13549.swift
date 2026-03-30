//
//  13549.swift
//  BOJ13000To13999
//
//  Created by 김이안 on 3/30/26.
//

//  문제 링크: https://www.acmicpc.net/problem/13549
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 최단 경로, 데이크스트라, 0-1 너비 우선 탐색

import Shared

public struct BOJ13549: Solvable {
    public init() {}

    public func run() {
        // 메모리: 73800KB, 시간: 24ms, 코드 길이: 1736B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var minSec = Array(repeating: 200001, count: 200001)
        var deque = Deque<Int>()
        deque.append(NK[0])
        minSec[NK[0]] = 0

        while !deque.isEmpty {
            let cur = deque.popFirst()!

            if cur == NK[1] {
                break
            }

            for (next, sec) in [(cur*2, 0), (cur-1, 1), (cur+1, 1)] where 0..<200001 ~= next && minSec[next] > minSec[cur] + sec {
                minSec[next] = minSec[cur] + sec

                if sec == 0 {
                    deque.prepend(next)
                    continue
                }

                deque.append(next)
            }
        }

        print(minSec[NK[1]])

        struct Deque<T> {
            private var preDeque = [T]()
            private var postDeque = [T]()
            private var preIdx = 0
            private var postIdx = 0
            var isEmpty: Bool {
                return preIdx >= preDeque.count && postIdx >= postDeque.count
            }

            mutating func prepend(_ element: T) {
                preDeque.append(element)
            }

            mutating func append(_ element: T) {
                postDeque.append(element)
            }

            mutating func popFirst() -> T? {
                if isEmpty {
                    return nil
                }

                if preIdx >= preDeque.count {
                    let res = postDeque[postIdx]
                    postIdx += 1
                    return res
                }

                if preIdx > 50 {
                    preIdx -= 50
                    preDeque.removeFirst(50)
                }

                return preDeque.removeLast()
            }

            mutating func popLast() -> T? {
                if isEmpty {
                    return nil
                }

                if postIdx >= postDeque.count {
                    let res = preDeque[preIdx]
                    preIdx += 1
                    return res
                }

                if postIdx > 50 {
                    postIdx -= 50
                    postDeque.removeFirst(50)
                }

                return postDeque.removeLast()
            }
        }
    }
}
