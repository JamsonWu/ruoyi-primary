import { router } from 'expo-router';
import { Text, View } from 'react-native';
import { useSession } from '../../ctx';

export default function AppTest() {
  console.log("加载App Test路由");
  
  const { login } = useSession();
  return (
    <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <Text
        onPress={() => {
          login();
          // Navigate after signing in. You may want to tweak this to ensure sign-in is
          // successful before navigating.
          router.replace('/');
        }}>
        登录
      </Text>
    </View>
  );
}
