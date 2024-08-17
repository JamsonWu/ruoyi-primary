import * as SecureStore from "expo-secure-store";
import * as React from "react";
import { Platform } from "react-native";

// 状态类型 Hook，const [[isLoading, session], setSession] = useStorageState('session');
// 定义一个元组，元组内嵌套一个状态state元组，再加一个函数
type UseStateHook<T> = [[boolean, T | null], (value: T | null) => void];

function useAsyncState<T>(
  // 状态初始值是一个元组，包含一个布尔值，一个泛型，默认值分别为true与null
  initialValue: [boolean, T | null] = [true, null]
): UseStateHook<T> {
  
  // React.useReducer 返回的是状态与函数，函数没有入参，为什么可以转换为带参数的函数？
  // 因为我们把T当作action了，状态中有T，action也是T，所以才可以转换为UseStateHook<T>类型
  return React.useReducer(
    // 这是一个reducer函数，对应函数类型为type Reducer<S, A> = (prevState: S, action: A) => S;
    // reducer函数入参声明：(执行action之前的状态state，动作定义action)
    // reducer函数返回值类型声明：[boolean, T | null]
    // reducer函数返回值为 [false,action]，其中 =>是箭头函数的声明，只是简化写法。
    (
      state: [boolean, T | null],
      action: T | null = null
    ): [boolean, T | null] => [false, action],
    // 初始值
    initialValue
  ) as UseStateHook<T>;

}

// 键值对数据保存到本地store中
export async function setStorageItemAsync(key: string, value: string | null) {
  if (Platform.OS === "web") {
    try {
      if (value === null) {
        localStorage.removeItem(key);
      } else {
        localStorage.setItem(key, value);
      }
    } catch (e) {
      console.error("Local storage is unavailable:", e);
    }
  } else {
    if (value == null) {
      await SecureStore.deleteItemAsync(key);
    } else {
      await SecureStore.setItemAsync(key, value);
    }
  }
}
 
// 封装会话存储的hook：存取session
export function useStorageState(key: string): UseStateHook<string> {
  // Public
  const [state, setState] = useAsyncState<string>();

  // 根据 key 从store中取值
  React.useEffect(() => {
    if (Platform.OS === "web") {
      try {
        if (typeof localStorage !== "undefined") {
          setState(localStorage.getItem(key));
        }
      } catch (e) {
        console.error("Local storage is unavailable:", e);
      }
    } else {
      SecureStore.getItemAsync(key).then((value) => {
        // 从store中读取，然后更新状态
        console.log("读取状态值", value);
        setState(value);
      });
    }
  }, [key]);

  // 设置键值对方法，使用useCallback，当key发生变化才会调用内部方法
  const setValue = React.useCallback(
    // 状态设置方法：入参为字符串或null
    (value: string | null) => {
      console.log("useStorageState setValue", value);
      // 更新状态
      setState(value);
      // 将状态值保存到store中
      setStorageItemAsync(key, value);
    },
    [key]
  );

  return [state, setValue];
}
