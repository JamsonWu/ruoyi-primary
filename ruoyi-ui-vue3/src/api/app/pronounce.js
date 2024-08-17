import request from '@/utils/request'

// 查询单词发音对照表列表
export function listPronounce(query) {
  return request({
    url: '/app/pronounce/list',
    method: 'get',
    params: query
  })
}

// 查询单词发音对照表详细
export function getPronounce(id) {
  return request({
    url: '/app/pronounce/' + id,
    method: 'get'
  })
}

// 新增单词发音对照表
export function addPronounce(data) {
  return request({
    url: '/app/pronounce',
    method: 'post',
    data: data
  })
}

// 修改单词发音对照表
export function updatePronounce(data) {
  return request({
    url: '/app/pronounce',
    method: 'put',
    data: data
  })
}

// 删除单词发音对照表
export function delPronounce(id) {
  return request({
    url: '/app/pronounce/' + id,
    method: 'delete'
  })
}
