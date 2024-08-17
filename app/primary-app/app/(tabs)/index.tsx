import { StyleSheet } from "react-native";
import { AntDesign } from "@expo/vector-icons";
import {
  Text,
  Box,
  Button,
  ButtonText,
  VStack,
  HStack,
  Pressable,
  Icon,
  Badge,
  BadgeIcon,
  BadgeText,
  GlobeIcon,
  Card,
  Heading
} from "@gluestack-ui/themed";
import { Stack, Link } from "expo-router";

import {
  Blinds,
  ChevronRight,
  Headphones,
  HeartHandshake,
  Settings,
  Tablets,
  User,
} from "lucide-react-native";
export default function IndexScreen() {
  console.log("tabs index");
  return (
    <>
      <Box
        flex={1}
        sx={{
          _light: { bg: "white" },
          _dark: { bg: "$backgroundDark950" },
        }}
      >
        <Stack.Screen
          options={{
            headerShown: false,
          }}
        />

        <Box flex={1}>
          <VStack px="$5" py="$5" space="lg" flex={1}>
            <HStack justifyContent="space-between">
              <HStack space="md">
                <Text>Personal Info</Text>
              </HStack>
              <Pressable>
                {/* 图标怎么上主题色？ */}
                <Icon as={ChevronRight} size="lg"/>
              </Pressable>
            </HStack>
            <HStack>
              <Button>
                <ButtonText>测试</ButtonText>
              </Button>
            </HStack>
            <HStack>
              <Link href="/logout"> <Text>退出系统</Text></Link>
            </HStack>
            <HStack>
              <Badge
                size="md"
                variant="solid"
                borderRadius="$none"
                action="success"
              >
                <BadgeText>New feature</BadgeText>
                <BadgeIcon as={GlobeIcon} ml="$2" />
              </Badge>
            </HStack>
            <HStack>
              <Card size="md" variant="elevated" flex={1}>
                <Heading mb="$1" size="md">
                  Quick Start
                </Heading>
                <Text size="sm">
                  Start building your next project in minutes
                </Text>
              </Card>
            </HStack>
          </VStack>
        </Box>
      </Box>
    </>
  );
}

const styles = StyleSheet.create({
  titleContainer: {
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
  },
  stepContainer: {
    gap: 8,
    marginBottom: 8,
  },
  reactLogo: {
    height: 178,
    width: 290,
    bottom: 0,
    left: 0,
    position: "absolute",
  },
});
