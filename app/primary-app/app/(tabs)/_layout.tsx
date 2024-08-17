import { Redirect, Tabs } from "expo-router";
import React from "react";

import { TabBarIcon } from "@/components/navigation/TabBarIcon";
import { Colors } from "@/constants/Colors";
import { useColorScheme } from "@/hooks/useColorScheme";

import { useSession } from '../../ctx';
import {Text} from  'react-native';

// (tabs)虚拟组下的_layout.tsx文件，当有多个虚拟组group时，默认会优先选择(tabs)组
// 如果tabs目录下找不到约定的_layout文件(要加_)，则默认找index.tsx，如果还是找不到，就找别的组下的_layout
export default function TabLayout() {
  console.log("To Default TabLayout");
  const { session, isLoading } = useSession();
  const colorScheme = useColorScheme();
  // You can keep the splash screen open, or render a loading screen like we do here.
  if (isLoading) {
    return <Text>Loading...</Text>;
  }

  // Only require authentication within the (app) group's layout as users
  // need to be able to access the (auth) group and sign in again.
  if (!session) {
    // On web, static rendering will stop here as the user is not authenticated
    // in the headless Node process that the pages are rendered in.
    return <Redirect href="/login" />;
  }
  console.log("登录成功");
  
  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: Colors[colorScheme ?? "light"].tint,
        headerShown: false,
      }}
    >
      {/* Tab顺序根据这里配置的先后决定 */}
      <Tabs.Screen
        name="index"
        options={{
          title: "首页",
          // 图标设置
          // 要熟悉常用语法：入参是个对象，从对象中取出2个属性，分别是color,focused
          // 返回一个ReactNode节点
          tabBarIcon: ({ color, focused }) => (
            // 自定义图标组件，参数为Icon名与对应颜色
            <TabBarIcon
              name={focused ? "home" : "home-outline"}
              color={color}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="explore"
        options={{
          title: "发现",
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon
              name={focused ? "code-slash" : "code-slash-outline"}
              color={color}
            />
          ),
        }}
      />
    </Tabs>
  );
}
