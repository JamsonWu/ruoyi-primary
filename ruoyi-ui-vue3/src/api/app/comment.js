import request from '@/utils/request'

// 查询词语解释列表
export function listComment(query) {
  return request({
    url: '/app/comment/list',
    method: 'get',
    params: query
  })
}

// 查询词语解释详细
export function getComment(id) {
  return request({
    url: '/app/comment/' + id,
    method: 'get'
  })
}

// 新增词语解释
export function addComment(data) {
  return request({
    url: '/app/comment',
    method: 'post',
    data: data
  })
}

// 修改词语解释
export function updateComment(data) {
  return request({
    url: '/app/comment',
    method: 'put',
    data: data
  })
}

// 删除词语解释
export function delComment(id) {
  return request({
    url: '/app/comment/' + id,
    method: 'delete'
  })
}
