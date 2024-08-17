// You can explore the built-in icon families and icons on the web at https://icons.expo.fyi/

import Ionicons from '@expo/vector-icons/Ionicons';
import { type IconProps } from '@expo/vector-icons/build/createIconSet';
import { type ComponentProps } from 'react';
// typeof Ionicons 读取Ionicons的类型
// ComponentProps<typeof Ionicons>读取Ionicons的类型的属性名列，其中Ionicons有一个属性名为name
// 即 name: GLYPHS;
// IconProps<ComponentProps<typeof Ionicons>['name']是对组件入参的定义
// 由于返回的组件是Ionicons，所以入参肯定是IconProps
// style是TextStyle
export function TabBarIcon({ style, ...rest }: IconProps<ComponentProps<typeof Ionicons>['name']>) {
  return <Ionicons size={28} style={[{ marginBottom: -3 }, style]} {...rest} />;
}
