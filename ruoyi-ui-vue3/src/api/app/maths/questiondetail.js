import request from '@/utils/request'

// 查询数学错题明细列表
export function listQuestiondetail(query) {
  return request({
    url: '/maths/questiondetail/list',
    method: 'get',
    params: query
  })
}

// 查询数学错题明细详细
export function getQuestiondetail(id) {
  return request({
    url: '/maths/questiondetail/' + id,
    method: 'get'
  })
}

// 新增数学错题明细
export function addQuestiondetail(data) {
  return request({
    url: '/maths/questiondetail',
    method: 'post',
    data: data
  })
}

// 修改数学错题明细
export function updateQuestiondetail(data) {
  return request({
    url: '/maths/questiondetail',
    method: 'put',
    data: data
  })
}

// 删除数学错题明细
export function delQuestiondetail(id) {
  return request({
    url: '/maths/questiondetail/' + id,
    method: 'delete'
  })
}
