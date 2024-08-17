import request from '@/utils/request'

// 查询诗与词列表
export function listPoetry(query) {
  return request({
    url: '/app/poetry/list',
    method: 'get',
    params: query
  })
}

// 查询诗与词详细
export function getPoetry(id) {
  return request({
    url: '/app/poetry/' + id,
    method: 'get'
  })
}

// 新增诗与词
export function addPoetry(data) {
  return request({
    url: '/app/poetry',
    method: 'post',
    data: data
  })
}

// 修改诗与词
export function updatePoetry(data) {
  return request({
    url: '/app/poetry',
    method: 'put',
    data: data
  })
}

// 删除诗与词
export function delPoetry(id) {
  return request({
    url: '/app/poetry/' + id,
    method: 'delete'
  })
}
