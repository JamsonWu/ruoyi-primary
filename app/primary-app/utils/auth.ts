// import Cookies from 'js-cookie'
import * as SecureStore from "expo-secure-store";
const TokenKey = 'Admin-Token'

export function getToken() {
  return SecureStore.getItem(TokenKey)
}

export function setToken(token:string) {
  return SecureStore.setItem(TokenKey, token)
}

export function removeToken() {
  return SecureStore.deleteItemAsync(TokenKey)
}
