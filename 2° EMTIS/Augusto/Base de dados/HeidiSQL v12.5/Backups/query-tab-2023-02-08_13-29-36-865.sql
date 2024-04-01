
# Consulta fmendes

/*
 Navicat Premium Data Transfer

 Source Server         : docideias
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31-cll-lve)
 Source Host           : ds3.hospedam.com:3306
 Source Schema         : docid539_fmendes

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31-cll-lve)
 File Encoding         : 65001

 Date: 08/02/2023 12:39:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accesso.UsuarioToken
-- ----------------------------
DROP TABLE IF EXISTS `accesso.UsuarioToken`;
CREATE TABLE `accesso.UsuarioToken`  (
  `ID_USUARIO_TOKEN` bigint NOT NULL AUTO_INCREMENT,
  `ID_USUARIO` bigint NOT NULL,
  `TOKEN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ATIVO` bit(1) NOT NULL COMMENT '0 =False | 1 = True',
  PRIMARY KEY (`ID_USUARIO_TOKEN`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accesso.UsuarioToken
-- ----------------------------

-- ----------------------------
-- Table structure for acesso.Usuario
-- ----------------------------
DROP TABLE IF EXISTS `acesso.Usuario`;
CREATE TABLE `acesso.Usuario`  (
  `ID_USUARIO` bigint NOT NULL AUTO_INCREMENT,
  `NOME_USU` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EMAIL_USU` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SENHA_USU` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DT_CADASTRO_USU` datetime NOT NULL,
  `ATIVO` bit(1) NOT NULL COMMENT '0 =False | 1 = True',
  PRIMARY KEY (`ID_USUARIO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acesso.Usuario
-- ----------------------------

-- ----------------------------
-- Table structure for endereco.Cidade
-- ----------------------------
DROP TABLE IF EXISTS `endereco.Cidade`;
CREATE TABLE `endereco.Cidade`  (
  `ID_CIDADE` bigint NOT NULL AUTO_INCREMENT,
  `COD_IBGE` bigint NOT NULL,
  `COD_PAIS` bigint NOT NULL,
  `DESCRICAO_CIDADE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UF` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DDD` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ATIVO` bit(1) NOT NULL DEFAULT b'1' COMMENT '0 =False | 1 = True',
  PRIMARY KEY (`ID_CIDADE`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4019 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;ddocid539_fmendesdocid539_fmendesocid539_fmendesdocid539_fmendesdocid539_fmendes