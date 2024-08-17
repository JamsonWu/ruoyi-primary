import request from '@/utils/request'

// 查询诗词明细列表
export function listDetail(query) {
  return request({
    url: '/app/detail/list',
    method: 'get',
    params: query
  })
}

// 查询诗词明细详细
export function getDetail(id) {
  return request({
    url: '/app/detail/' + id,
    method: 'get'
  })
}

// 新增诗词明细
export function addDetail(data) {
  return request({
    url: '/app/detail',
    method: 'post',
    data: data
  })
}

// 修改诗词明细
export function updateDetail(data) {
  return request({
    url: '/app/detail',
    method: 'put',
    data: data
  })
}

// 删除诗词明细
export function delDetail(id) {
  return request({
    url: '/app/detail/' + id,
    method: 'delete'
  })
}
