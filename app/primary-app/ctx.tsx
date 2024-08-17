import React from "react";
import { useStorageState } from "./useStorageState";
import { login } from "@/api/login";
import { setToken } from "@/utils/auth";

export type LoginFormType = {
  userName: string;
  pwd: string;
  code: string;
  uuid: string;
};

// 创建授权上下文：入参包含登录函数，退出函数，会话，是否加载中
// Context值是一个对象，这个对象可以包含任何类型的属性
const AuthContext = React.createContext<{
  login: (LoginFormType: LoginFormType) => Promise<void>;
  logout: () => void;
  session?: string | null;
  isLoading: boolean;
}>({
  // 这是模拟实现
  login: (LoginFormType) => Promise.resolve(),
  logout: () => null,
  session: null,
  isLoading: false,
});

// This hook can be used to access the user info.
// 创建一个hook，用户访问授权上下文值
export function useSession() {
  const value = React.useContext(AuthContext);
  if (process.env.NODE_ENV !== "production") {
    if (!value) {
      throw new Error("useSession must be wrapped in a <SessionProvider />");
    }
  }
  return value;
}

// 高阶组件：封装授权上下文Provider，隐藏用户调用细节
//          实现Context中定义的函数并设置相关Context定义的属性值
export function SessionProvider(props: React.PropsWithChildren) {
  // 从本地store中读取状态值及设置状态的函数
  const [[isLoading, session], setSession] = useStorageState("session");
  return (
    <AuthContext.Provider
      value={{
        login: ({ userName, pwd, code, uuid }) => {
          // Perform sign-in logic here
          // 在Provider中实现login方法，调用远程接口登录，登录成功后返回 session ，保存中会话中
          return new Promise((resolve, reject) => {
            login(userName, pwd, code, uuid)
              .then((res: any) => {
                const token = res.token;
                setToken(token);
                setSession(token);
                resolve()
              })
              .catch((error) => {
                console.log("接口异常", error);
                setSession(null);
                reject(error.message)
              });
          });
        },
        logout: () => {
          // 登出逻辑，将session置空
          setSession(null);
        },
        session,
        isLoading,
      }}
    >
      {props.children}
    </AuthContext.Provider>
  );
}
