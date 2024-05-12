//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/12/25.
//

// Swift Version Info
// 백준: Swift 5.5.2
// 프로그래머스: Swift 5.2.5
// Samsung SW Expert Academy: 미지원
// Codility: Swift 4
// CODEFORCES: 미지원
// LeetCode: Swift 5.5.2
// CodeUp: 미지원

import Foundation

let main = BOJ12761()
main.run()

class BOJ19538: Solvable {
    func run() {
        let N = Int(readLine()!)!
        var t = Array(repeating: -1, count: N)
        var graph = [Int: [Int]]()

        for idx in 0..<N {
            var input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            input.removeLast()

            if input.isEmpty {
                continue
            }

            for next in input {
                graph[idx, default: []].append(next)
            }
        }

        _ = Int(readLine()!)!
        let liars = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        var queue = [Int]()
        var idx = 0

        for liar in liars {
            queue.append(liar)
            t[liar] = 0
        }

        while idx < queue.count {
            let now = queue[idx]
            idx += 1

            var updates = [Int]()

            for next in graph[now, default: []] where t[next] < 0 && graph[next, default: []].filter { t[$0] > -1 }.count * 2 >= graph[next, default: []].count {
                updates.append(next)
            }

            for update in updates {
                t[update] = t[now] + 1
                queue.append(update)
            }
        }

        print(t.map { String($0) }.joined(separator: " "))
    }
}

class BOJ16236: Solvable {
    func run() {
        let N = Int(readLine()!)!
        var area = Array(repeating: Array(repeating: 0, count: N), count: N)
        var current = (0, 0)
        var (time, count) = (0, 0)
        var sharkSize = 2
        var stop = false
        var eat = false

        for row in 0..<N {
            area[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<N where area[row][col] == 9 {
                current = (row, col)
                area[row][col] = 0
            }
        }

        while !stop {
            var visited = Array(repeating: Array(repeating: false, count: N), count: N)

        }
    }
}

class BOJ2650: Solvable {
    func run() {
        let N = Int(readLine()!)! / 2
        var lines = Array(repeating: ((0, 0), (0, 0)), count: N)

        for idx in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            lines[idx] = (pointToCoordinate(input[0], input[1]), pointToCoordinate(input[2], input[3]))
        }

        let result = countCrossPoint()
        print("\(result.0)\n\(result.1)")

        func pointToCoordinate(_ x: Int, _ y: Int) -> (Int, Int) {
            switch x {
            case 1:
                return (y, 0)
            case 2:
                return (y, 51)
            case 3:
                return (0, y)
            case 4:
                return (51, y)
            default:
                return (0, 0)
            }
        }

        func CCW(_ point1: (Int, Int), _ point2: (Int, Int), _ point3: (Int, Int)) -> Int {
            let v1 = (point1.0 - point2.0, point1.1 - point2.1)
            let v2 = (point2.0 - point3.0, point2.1 - point3.1)
            let result = v1.0 * v2.1 - v1.1 * v2.0

            return result.signum()
        }

        func countCrossPoint() -> (Int, Int) {
            var (totalCount, maxCount) = (0, 0)

            for idx1 in 0..<N {
                var count = 0

                for idx2 in 0..<N where idx1 != idx2 {
                    if checkCrossPoint(lines[idx1], lines[idx2]) {
                        count += 1
                    }
                }

                maxCount = max(maxCount, count)
                totalCount += count
            }

            return (totalCount/2, maxCount)
        }

        func checkCrossPoint(_ line1: ((Int, Int), (Int, Int)), _ line2: ((Int, Int), (Int, Int))) -> Bool {
            var (point1, point2, point3, point4) = (line1.0, line1.1, line2.0, line2.1)
            let CCW1 = CCW(point1, point2, point3)
            let CCW2 = CCW(point1, point2, point4)
            let CCW3 = CCW(point3, point4, point1)
            let CCW4 = CCW(point3, point4, point2)

            let result1 = CCW1 * CCW2
            let result2 = CCW3 * CCW4

            if result1 > 0 || result2 > 0 {
                return false
            }

            if result1 != 0 || result2 != 0 {
                return true
            }

            if point3 <= point1 {
                swap(&point1, &point3)
                swap(&point2, &point4)
            }

            if point1 <= point4 && point3 <= point2 {
                if point4 <= point2 {
                    return false
                }

                return true
            }

            return false
        }
    }
}

class BOJ1325: Solvable {
    func run() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var trusts = Array(repeating: [Int](), count: NM[0]+1)
        var maxCount = 0
        var maxComputer = [Int]()

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            trusts[input[1]].append(input[0])
        }

        for num in 1...NM[0] {
            var queue = Queue<Int>()
            var visited = Array(repeating: false, count: NM[0]+1)
            visited[num] = true
            var count = 0

            for next in trusts[num] where !visited[next] {
                queue.push(next)
                count += 1
                visited[next] = true
            }

            while let dequeued = queue.pop() {
                for next in trusts[dequeued] where !visited[next] {
                    queue.push(next)
                    count += 1
                    visited[next] = true
                }
            }

            if maxCount < count {
                maxCount = count
                maxComputer = [num]
            } else if maxCount == count {
                maxComputer.append(num)
            }
        }

        print(maxComputer.map { String($0) }.joined(separator: " "))

        struct Queue<T> {
            private var enqueue = [T]()
            private var dequeue = [T]()
            var isEmpty: Bool {
                enqueue.isEmpty && dequeue.isEmpty
            }

            mutating func push(_ data: T) {
                enqueue.append(data)
            }

            mutating func pop() -> T? {
                if dequeue.isEmpty {
                    dequeue = enqueue.reversed()
                    enqueue.removeAll()
                }

                return dequeue.popLast()
            }
        }
    }
}

class BOJ2580: Solvable {
    func run() {
        var sudoku = Array(repeating: Array(repeating: 0, count: 9), count: 9)
        var queue  = [(Int, Int)]()

        for row in 0..<9 {
            let line = readLine()!.split(separator: " ").map { Int(String($0))! }
            sudoku[row] = line

            if line.contains(0) {
                for col in line.indices where line[col] == 0 {
                    queue.append((row, col))
                }
            }
        }

//        var idx = 0

//        while idx < queue.count {
        while !queue.isEmpty {
//            let (x, y) = queue[idx]
//            idx += 1
            let (x, y) = queue.removeFirst()

            var candidate = Set(1...9)

            var xSection = 0..<3
            var ySection = 0..<3

            if 3..<6 ~= x {
                xSection = 3..<6
            } else if 6..<9 ~= x {
                xSection = 6..<9
            }

            if 3..<6 ~= y {
                ySection = 3..<6
            } else if 6..<9 ~= y {
                ySection = 6..<9
            }

            for row in xSection {
                for col in ySection where candidate.contains(sudoku[row][col]) {
                    candidate.remove(sudoku[row][col])
                }
            }

            for col in 0..<9 where candidate.contains(sudoku[x][col]) {
                candidate.remove(sudoku[x][col])
            }

            for row in 0..<9 where candidate.contains(sudoku[row][y]) {
                candidate.remove(sudoku[row][y])
            }

            if candidate.count == 1 {
                sudoku[x][y] = candidate.sorted()[0]
                continue
            }

            queue.append((x, y))
            print(queue)
        }

        sudoku.forEach {
            print($0.map { String($0) }.joined(separator: " "))
        }
    }
}

class LinkedList {
    func run() {
        var list = LinkedList<Int>()
        print(list)
        list.push(1)
        list.push(2)
        print(list)
        list.insert(3, at: 0)
        print(list)
        list.insert(4, at: 1)
        list.insert(5, at: 1)
        print(list)
        print(list.remove(at: 2)!.value)
        print(list)
        print(list.pop()!.value)
        print(list)
    }

    class Node<T> {
        var value: T
        var next: Node?

        init(value: T, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }

    struct LinkedList<T>: CustomStringConvertible {
        var head: Node<T>?
        var tail: Node<T>?

        var isEmpty: Bool {
            head == nil
        }

        var count: Int {
            var (idx, current) = (0, head)

            while current != nil {
                current = current!.next
                idx += 1
            }

            return idx
        }

        var description: String {
            if isEmpty {
                return "Empty List"
            }

            var current = head
            var list = ""

            while current != nil {
                list += "\(current!.value) -> "
                current = current!.next
            }

            list.removeLast(4)

            return list
        }

        mutating func push(_ data: T) {
            if isEmpty {
                head = Node(value: data)
                tail = head
                return
            }

            tail!.next = Node(value: data)
            tail = tail!.next
        }

        mutating func insert(_ data: T, at idx: Int) {
            if isEmpty {
                push(data)
                return
            }

            if idx == 0 {
                let node = Node(value: data, next: head)
                head = node
                return
            }

            let prev = find(at: idx-1)
            prev!.next = Node(value: data, next: prev!.next)
        }

        mutating func find(at idx: Int) -> Node<T>? {
            var current = (idx: 0, node: head)

            while current.node != nil && current.idx < idx {
                current.node = current.node!.next
                current.idx += 1
            }

            return current.node
        }

        mutating func pop() -> Node<T>? {
            if count == 1 {
                let node = head
                head = nil

                return node
            }

            let node = find(at: count-1)
            let prev = find(at: count-2)
            tail = prev
            tail!.next = nil

            return node
        }

        mutating func remove(at idx: Int) -> Node<T>? {
            if idx == 0 {
                let node = find(at: 0)
                head = find(at: 1)
                return node
            }

            let node = find(at: idx)
            find(at: idx-1)!.next = node!.next

            return node
        }
    }
}

func getAddress(address o: UnsafeRawPointer) -> String {
    String(format: "%p", Int(bitPattern: o))
}

class Ex3_4 {
    func run() {
        let A = Polynomial(degree: 3, coef: [4, 3, 5, 0])
        let B = Polynomial(degree: 4, coef: [3, 1, 0, 2, 1])
        let C = addPoly(A, B)

        print("A(x) = \(printPoly(A))")
        print("B(x) = \(printPoly(B))")
        print("C(x) = \(printPoly(C))")
    }

    private func addPoly(_ A: Polynomial, _ B: Polynomial) -> Polynomial {
        var (A_index, B_index, C_index) = (0, 0, 0)
        var (A_degree, B_degree) = (A.degree, B.degree)
        var C = Polynomial(degree: max(A.degree, B.degree))

        while A_index <= A.degree && B_index <= B.degree {
            if A_degree > B_degree {
                C.coef[C_index] = A.coef[A_index]
                C_index += 1
                A_index += 1
                A_degree -= 1
            } else if A_degree == B_degree {
                C.coef[C_index] = A.coef[A_index] + B.coef[B_index]
                C_index += 1
                A_index += 1
                B_index += 1
                A_degree -= 1
                B_degree -= 1
            } else {
                C.coef[C_index] = B.coef[B_index]
                C_index += 1
                B_index += 1
                B_degree -= 1
            }
        }

        return C
    }

    private func printPoly(_ P: Polynomial) -> String {
        var expression = ""
        var degree = P.degree

        for i in 0...P.degree {
            expression += "\(P.coef[i])x^\(degree)\(i < P.degree ? " + " : "")"
            degree -= 1
        }

        return expression
    }

    struct Polynomial {
        var degree: Int
        var coef: [Int]

        init(degree: Int) {
            self.degree = degree
            self.coef = Array(repeating: 0, count: degree+1)
        }

        init(degree: Int, coef: [Int]) {
            self.degree = degree
            self.coef = coef
        }
    }
}

class SequenceList {
    func run() {
        var array = [[[1, 2, 3, 4], [5, 6, 7, 8]], [[9, 10, 11, 12], [13, 14, 15, 16]]]
        for i in array.indices {
            for j in array[i].indices {
                for k in array[i][j].indices {
                    withUnsafePointer(to: &array[i][j][k]) {
                        print("&array[\(i)][\(j)][\(k)]: \($0)")
                    }
                }
            }
        }
//        for row in array.indices {
//            for col in array[row].indices {
//                withUnsafePointer(to: &array[row][col]) {
//                    print("&array[\(row)][\(col)]: \($0)")
//                }
//            }
//        }
    }
}
