import request from '@/utils/request'

// 查询语文词语列表
export function listChinese(query) {
  return request({
    url: '/app/chinese/list',
    method: 'get',
    params: query
  })
}

// 查询语文词语详细
export function getChinese(id) {
  return request({
    url: '/app/chinese/' + id,
    method: 'get'
  })
}

// 新增语文词语
export function addChinese(data) {
  return request({
    url: '/app/chinese',
    method: 'post',
    data: data
  })
}

// 修改语文词语
export function updateChinese(data) {
  return request({
    url: '/app/chinese',
    method: 'put',
    data: data
  })
}

// 删除语文词语
export function delChinese(id) {
  return request({
    url: '/app/chinese/' + id,
    method: 'delete'
  })
}
// 拆分四字词
export function divideChinese(data) {
  return request({
    url: '/app/chinese/divide',
    method: 'post',
    data: data
  })
}
