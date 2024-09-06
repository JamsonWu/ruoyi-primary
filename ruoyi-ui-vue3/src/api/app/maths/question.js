import request from '@/utils/request'

// 查询数学错题主列表
export function listQuestion(query) {
  return request({
    url: '/maths/question/list',
    method: 'get',
    params: query
  })
}

// 查询数学错题主详细
export function getQuestion(id) {
  return request({
    url: '/maths/question/' + id,
    method: 'get'
  })
}

// 新增数学错题主
export function addQuestion(data) {
  return request({
    url: '/maths/question',
    method: 'post',
    data: data
  })
}

// 修改数学错题主
export function updateQuestion(data) {
  return request({
    url: '/maths/question',
    method: 'put',
    data: data
  })
}

// 删除数学错题主
export function delQuestion(id) {
  return request({
    url: '/maths/question/' + id,
    method: 'delete'
  })
}

// 数学问题解答上传
export function uploadAnswer(data) {
  return request({
    url: '/maths/question/answer',
    method: 'post',
    data: data
  })
}
