import {
  DarkTheme,
  DefaultTheme,
  ThemeProvider,
} from "@react-navigation/native";
import { useFonts } from "expo-font";
import { Stack, Slot } from "expo-router";
import * as SplashScreen from "expo-splash-screen";
import { useEffect } from "react";
import "react-native-reanimated";

import { SessionProvider } from "../ctx";

import { useColorScheme } from "@/hooks/useColorScheme";


// Prevent the splash screen from auto-hiding before asset loading is complete.
// SplashScreen在哪定义呢？ Expo自动集成了splash，提供了在app.json中配置splash的图片
SplashScreen.preventAutoHideAsync();

// 这是根布局文件
export default function RootLayout() {
  // 获取设备设置的颜色主题：设备：设置->显示和亮度->浅色或深色，只有2种
  const colorScheme = useColorScheme();
  console.log("colorScheme", colorScheme);

  // 根据需要自定义字体
  const [loaded] = useFonts({
    SpaceMono: require("../assets/fonts/SpaceMono-Regular.ttf"),
  });

  useEffect(() => {
    if (loaded) {
      // 字体库加载完成之后要关闭，不然会一直显示splash
      SplashScreen.hideAsync();
    }
  }, [loaded]);

  if (!loaded) {
    // 如果字体未加载完成，则不渲染UI
    console.log("字体未加载完成");

    return null;
  }
  console.log("渲染页面");

  return (
    <SessionProvider>
      
      <ThemeProvider value={colorScheme === "dark" ? DarkTheme : DefaultTheme}>
        <Stack
          // 配置导航栏，应用于所有路由
          screenOptions={{
            headerStyle: {
              backgroundColor: "#f4511e",
            },
            headerTintColor: "#fff",
            headerTitleStyle: {
              fontWeight: "bold",
            },
          }}  
        >
          {/* 对(xxx)虚拟组配置导航栏 */}
          <Stack.Screen
            name="(tabs)"
            options={{ headerShown: false, title: "tabs group" }}
          />
          <Stack.Screen
            name="(app)"
            options={{ headerShown: false, title: "app group" }}
          />
        </Stack>
      </ThemeProvider>
    </SessionProvider>
  );
}
