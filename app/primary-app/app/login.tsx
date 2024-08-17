import { router, Stack } from "expo-router";
import { StyleSheet, useColorScheme, Platform } from "react-native";
import { useSession, type LoginFormType } from "../ctx";
import { useEffect, useRef, useState } from "react";
import {
  Box,
  FormControl,
  HStack,
  Input,
  InputField,
  Button,
  ButtonText,
  Image,
  Center,
  Pressable,
  ButtonSpinner,
  Text,
} from "@gluestack-ui/themed";
import { getCodeImg } from "@/api/login";
export default function Login() {
  const colorScheme = useColorScheme();
  // 如何监听手机主题色的变更呢？当手机改变了主题色，需要保存当前主题色的状态，便于JS代码中调用 todo...

  useEffect(() => {
    console.log("当前主题色", colorScheme);
  }, [colorScheme]);

  const { login } = useSession();
  const [codeImg, setCodeImg] = useState("");
  const [updateCode, setUpdateCode] = useState(0);
  const [loading, setLoading] = useState(false);
  const loginRef = useRef<LoginFormType>({
    userName: "-",
    pwd: "-",
    code: "-",
    uuid: "-",
  });

  // 表单数据如何绑定到对象上？
  useEffect(() => {
    getCodeImg().then((res: any) => {
      setCodeImg("data:image/gif;base64," + res.img);
      loginRef.current.uuid = res.uuid;
    });
  }, [updateCode]);

  const onLogin = () => {
    setLoading(true);
    // 校验
    login(loginRef.current)
      .then((res) => {
        setLoading(false);
        router.replace("/");
      })
      .catch((e) => {
        setUpdateCode(updateCode + 1);
        setLoading(false);
      });
  };

  return (
    <Center h="80%">
      <Box h="$32" w="$72" m="$5">
        <FormControl
          size="md"
          my="$1"
          isDisabled={false}
          isInvalid={false}
          isReadOnly={false}
          isRequired={true}
          style={styles.rowStyle}
        >
          <Input flex={1}>
            <InputField
              type="text"
              defaultValue=""
              placeholder="请输入用户名"
              onChangeText={(val) => {
                loginRef.current.userName = val;
              }}
            />
          </Input>
        </FormControl>

        <FormControl
          size="md"
          my="$1"
          isDisabled={false}
          isInvalid={false}
          isReadOnly={false}
          isRequired={true}
          style={styles.rowStyle}
        >
          <Input flex={1}>
            <InputField
              type="password"
              defaultValue=""
              placeholder="请输入密码"
              onChangeText={(val) => {
                loginRef.current.pwd = val;
              }}
            />
          </Input>
        </FormControl>

        <FormControl
          size="md"
          my="$1"
          isDisabled={false}
          isInvalid={false}
          isReadOnly={false}
          isRequired={true}
          style={styles.rowStyle}
        >
          <Input flex={2}>
            <InputField
              type="text"
              defaultValue=""
              placeholder="请输入验证码"
              onChangeText={(val) => {
                loginRef.current.code = val;
              }}
            />
          </Input>
          {/* Image如何显示base64图 */}
          {codeImg && (
            <Pressable
              flex={1}
              onPress={() => {
                setUpdateCode(updateCode + 1);
              }}
            >
              <Image
                size="md"
                alt="test"
                source={codeImg}
                h="$9"
                ml="$1"
                mr="0"
                flex={1}
                borderRadius={5}
              />
            </Pressable>
          )}
        </FormControl>

        <HStack my="$1">
          <Button
            size="md"
            variant="solid"
            action="primary"
            isDisabled={false}
            isFocusVisible={false}
            onPress={onLogin}
            flex={1}
          >
            {loading && <ButtonSpinner mr="$1" />}
            <ButtonText>登录</ButtonText>
          </Button>
        </HStack>
      </Box>
    </Center>
  );
}

const styles = StyleSheet.create({
  loginContainer: {
    display: "flex",
    alignItems: "center",
    flex: 1,
  },
  rowStyle: {
    display: "flex",
    flexDirection: "row",
    alignItems: "center",
  },
});
