import request from '@/utils/request'

// 查询小学课文单词与词组列表
export function listLesson(query) {
  return request({
    url: '/app/lesson/list',
    method: 'get',
    params: query
  })
}

// 查询小学课文单词与词组详细
export function getLesson(id) {
  return request({
    url: '/app/lesson/' + id,
    method: 'get'
  })
}

// 新增小学课文单词与词组
export function addLesson(data) {
  return request({
    url: '/app/lesson',
    method: 'post',
    data: data
  })
}

// 修改小学课文单词与词组
export function updateLesson(data) {
  return request({
    url: '/app/lesson',
    method: 'put',
    data: data
  })
}

// 删除小学课文单词与词组
export function delLesson(id) {
  return request({
    url: '/app/lesson/' + id,
    method: 'delete'
  })
}
