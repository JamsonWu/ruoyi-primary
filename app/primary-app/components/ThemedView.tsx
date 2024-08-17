import { View, type ViewProps } from 'react-native';
import { useThemeColor } from '@/hooks/useThemeColor';

// 组件要先定义属性类型
export type ThemedViewProps = ViewProps & {
  lightColor?: string;
  darkColor?: string;
};

// 创建主题化的View组件
// 主题View组件，可直接传入light与dark色值，也可以不传
// 如果不传，则useThemeColor会从全局配置中读取，但要传入colorName，即background
export function ThemedView({ style, lightColor, darkColor, ...otherProps }: ThemedViewProps) {
  const backgroundColor = useThemeColor({ light: lightColor, dark: darkColor }, 'background');
  // 当样式存在多个时，使用数组
  return <View style={[{ backgroundColor }, style]} {...otherProps} />;
}