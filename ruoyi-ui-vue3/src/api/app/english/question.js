import request from '@/utils/request'

// 查询英语错题主列表
export function listQuestion(query) {
  return request({
    url: '/english/question/list',
    method: 'get',
    params: query
  })
}

// 查询英语错题主详细
export function getQuestion(id) {
  return request({
    url: '/english/question/' + id,
    method: 'get'
  })
}

// 新增英语错题主
export function addQuestion(data) {
  return request({
    url: '/english/question',
    method: 'post',
    data: data
  })
}

// 修改英语错题主
export function updateQuestion(data) {
  return request({
    url: '/english/question',
    method: 'put',
    data: data
  })
}

// 删除英语错题主
export function delQuestion(id) {
  return request({
    url: '/english/question/' + id,
    method: 'delete'
  })
}
