import { router, Stack } from "expo-router";
import { Text, View } from "react-native";
import { useSession } from "../ctx";
import {
  Box,
  FormControl,
  FormControlLabel,
  FormControlLabelText,
  HStack,
  Input,
  InputField,
} from "@gluestack-ui/themed";

export default function Login() {
  const { login } = useSession();
  return (
    <>
      <Box h="$32" w="$72">
        <Stack.Screen
          options={{
            headerShown: true,
          }}
        />
        <FormControl
          size="md"
          isDisabled={false}
          isInvalid={false}
          isReadOnly={false}
          isRequired={true}
        >
          <FormControlLabel mb="$1">
            <FormControlLabelText>用户名</FormControlLabelText>
          </FormControlLabel>
          <Input>
            <InputField
              type="text"
              defaultValue=""
              placeholder="请输入用户名"
            />
          </Input>
        </FormControl>
        <FormControl
          size="md"
          isDisabled={false}
          isInvalid={false}
          isReadOnly={false}
          isRequired={true}
        >
          <FormControlLabel mb="$1">
            <FormControlLabelText>密码</FormControlLabelText>
          </FormControlLabel>
          <Input>
            <InputField
              type="password"
              defaultValue=""
              placeholder="请输入密码"
            />
          </Input>
        </FormControl>
      </Box>

      <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
        <Stack.Screen
          options={{
            title: "登录",
            headerShown: false,
          }}
        />

        <Text
          onPress={() => {
            login();
            // Navigate after signing in. You may want to tweak this to ensure sign-in is
            // successful before navigating.
            router.replace("/");
          }}
        >
          登录
        </Text>
      </View>
    </>
  );
}
