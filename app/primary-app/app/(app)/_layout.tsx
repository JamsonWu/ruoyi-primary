import { Redirect, Stack } from 'expo-router';

import { useSession } from '../../ctx';
import {Text} from 'react-native'

//(app)虚拟组下的_layout.tsx布局文件
export default function AppLayout() {
  console.log("进入虚拟组(app)下的路由时会先加载默认的布局");
  
  const { session, isLoading } = useSession();

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

  // This layout can be deferred because it's not the root layout.
  return <Stack />;
}
