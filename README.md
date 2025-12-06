# 🧭 Descubra seu Temperamento

Bem-vindo ao **temperament**, um aplicativo Flutter que realiza um teste rápido baseado na tradicional teoria dos quatro temperamentos.  
Com apenas **10 perguntas simples**, o app identifica seu perfil combinando duas dimensões principais: **Quente/Frio** e **Seco/Úmido**.

---

## 📖 Sobre o App

Este aplicativo apresenta um quiz interativo para ajudar o usuário a descobrir seu temperamento predominante.  
O teste é dividido em duas partes:

### 🔥 Quente ou Frio?
As 5 primeiras perguntas avaliam seu nível de energia e ritmo:

- **Quente** → pessoa ativa, acelerada, motivada.  
- **Frio** → alguém tranquilo, reservado, introspectivo.

### 💧 Seco ou Úmido?
As 5 últimas perguntas medem estrutura e adaptabilidade:

- **Seco** → organizado, estável, orientado à lógica.  
- **Úmido** → flexível, emocional, adaptável.

---

## 🧪 Perfis de Temperamento

Com base na combinação das respostas, o app identifica um dos quatro perfis clássicos:

### 🟡 **1. Quente e Úmido (Sanguíneo)**
Extrovertido, otimista e muito adaptável.  
Gosta de movimento e interação com pessoas.

### 🔴 **2. Quente e Seco (Colérico)**
Determinado, direto e orientado ao controle.  
Focado e organizado, sempre buscando resultados.

### 🟢 **3. Frio e Úmido (Fleumático)**
Calmo, paciente e estável.  
Prefere ambientes harmônicos e previsíveis.

### 🔵 **4. Frio e Seco (Melancólico)**
Analítico, detalhista e introspectivo.  
Gosta de ordem, planejamento e profundidade emocional.

---

## 🚀 Funcionalidades

- Quiz com **10 perguntas objetivas**  
- Cálculo automático do temperamento  
- Armazenamento local das respostas/estado  
- Fluxo simples e direto  
- UI leve e responsiva feita com Flutter

---

## 🛠 Tecnologias e Pacotes Utilizados

### **Flutter + Dart**

### **Gerenciamento de Estado**
- `mobx`
- `flutter_mobx`
- `mobx_codegen`

### **Injeção de Dependências**
- `get_it`

### **Armazenamento Local**
- `get_storage`

### **Build / Ferramentas**
- `flutter_launcher_icons` (para gerar ícones do app)

---

## ▶️ Como rodar o projeto

```bash
git clone https://github.com/andreantoniodev/temperament.git
cd temperament
flutter pub get
flutter run
