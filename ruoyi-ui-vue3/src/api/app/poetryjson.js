import request from '@/utils/request'

// 查询提供JSON完整数据,预留换JSON库列表
export function listPoetryjson(query) {
  return request({
    url: '/app/poetryjson/list',
    method: 'get',
    params: query
  })
}

// 查询提供JSON完整数据,预留换JSON库详细
export function getPoetryjson(id) {
  return request({
    url: '/app/poetryjson/' + id,
    method: 'get'
  })
}

// 新增提供JSON完整数据,预留换JSON库
export function addPoetryjson(data) {
  return request({
    url: '/app/poetryjson',
    method: 'post',
    data: data
  })
}

// 修改提供JSON完整数据,预留换JSON库
export function updatePoetryjson(data) {
  return request({
    url: '/app/poetryjson',
    method: 'put',
    data: data
  })
}

// 删除提供JSON完整数据,预留换JSON库
export function delPoetryjson(id) {
  return request({
    url: '/app/poetryjson/' + id,
    method: 'delete'
  })
}
