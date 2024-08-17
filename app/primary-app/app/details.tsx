import {
  Stack,
  useLocalSearchParams,
  useRouter,
  Link,
  useNavigation,
} from "expo-router";
import { View, Text, StyleSheet, Button } from "react-native";
import { TabActions } from "@react-navigation/native";
export default function Details() {
  const router = useRouter();
  const params = useLocalSearchParams();
  const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <Stack.Screen
        options={{
          title: params.name + " ",
          headerShown: true
        }}
      />
      <Link href="/testdir/test">Test</Link>
      <Text
        onPress={() => {
          // 动态改变路由参数
          router.setParams({ name: "Updated" });
        }}
      >
        Update the title
      </Text>

      
      <Button
        onPress={() => {
          // Tab页代码切换
          const jumpToAction = TabActions.jumpTo("explore");
          navigation.dispatch(jumpToAction);
          // 从子页返回到首页
          router.dismissAll();
          // if (router.canDismiss()) {
          //   //可指定返回哪一页
          //   router.dismiss(2);
          // }
 
        }}
        
        title="返回Tab explore 页"
      />
 
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
  },
});
