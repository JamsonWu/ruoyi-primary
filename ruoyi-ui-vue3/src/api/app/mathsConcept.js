import request from '@/utils/request'

// 查询数学概念列表
export function listMathsConcept(query) {
  return request({
    url: '/app/mathsConcept/list',
    method: 'get',
    params: query
  })
}

// 查询数学概念详细
export function getMathsConcept(id) {
  return request({
    url: '/app/mathsConcept/' + id,
    method: 'get'
  })
}

// 新增数学概念
export function addMathsConcept(data) {
  return request({
    url: '/app/mathsConcept',
    method: 'post',
    data: data
  })
}

// 修改数学概念
export function updateMathsConcept(data) {
  return request({
    url: '/app/mathsConcept',
    method: 'put',
    data: data
  })
}

// 删除数学概念
export function delMathsConcept(id) {
  return request({
    url: '/app/mathsConcept/' + id,
    method: 'delete'
  })
}
