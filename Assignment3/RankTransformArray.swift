func arrayRankTransform(_ arr: [Int]) -> [Int] {
    let sortedArr = arr.sorted()
    var map = [Int: Int]()
    var rank = 1
    for num in sortedArr{
        if map[num] == nil {
            map[num] = rank
            rank += 1
        }
    }
    return arr.map{map[$0]!}
}