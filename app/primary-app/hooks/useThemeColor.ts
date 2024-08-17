/**
 * Learn more about light and dark modes:
 * https://docs.expo.dev/guides/color-schemes/
 */

import { useColorScheme } from 'react-native';

import { Colors } from '@/constants/Colors';

export function useThemeColor(
  props: { light?: string; dark?: string },
  // keyof 后跟类型返回类型字段名，Colors.light是对象，所以要用typeof获取其类型
  colorName: keyof typeof Colors.light & keyof typeof Colors.dark
) {
  // 获取当前颜色主题，如果获取不到，则用light
  const theme = useColorScheme() ?? 'light';
  // 获取颜色主题 theme
  // 从入参传入的light或dark读取其值
  
  const colorFromProps = props[theme];
  
  if (colorFromProps) {
    return colorFromProps;
  } else {
    // 如果没有指定具体的 light与dark色值，则从全局常量中读取配置值
    // 其中 colorName要求传入
    return Colors[theme][colorName];
  }
}
