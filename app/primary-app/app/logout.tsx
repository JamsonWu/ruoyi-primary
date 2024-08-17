import { Text, View } from "react-native";

import { useSession } from "../ctx";
import { Redirect, Stack } from "expo-router";
import { Center, Box, Button, ButtonText } from "@gluestack-ui/themed";

export default function Logout() {
  const { logout, session } = useSession();
  if (!session) {
    return <Redirect href="/login" />;
  }
  return (
    <Center h="80%">
      <Box h="$32" w="$72" m="$5">
        <Stack.Screen
          options={{
            title: "退出系统",
            headerShown: false,
          }}
        />
        <Button
          size="md"
          variant="solid"
          action="primary"
          isDisabled={false}
          isFocusVisible={false}
          onPress={() => {
            logout();
          }}
        >
          <ButtonText>登录 </ButtonText>
        </Button>
      </Box>
    </Center>
  );
}
