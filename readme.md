# 🛳️ boatNavigating — Exploración en contenedores

<img src = "https://github.com/user-attachments/assets/1c10233d-e5d1-45e1-89c0-494043354b79">

**boatNavigating** es una experiencia interactiva que transforma la navegación en algo visual y distribuido: cinco islas alojadas en contenedores Docker, cada una con una vista única, y un barco que solo puede estar en una isla a la vez. El usuario puede mover el barco entre islas, y visualizar claramente si está anclado, ausente o en movimiento.

> “Un viaje entre islas, pero dentro de un sistema distribuido.”  

---

## 🌴 ¿Qué es este proyecto?

Imagina una página web dividida en cinco contenedores, cada uno representando una isla. En cada isla:

- Se muestra una ilustración tropical con palmas y cocos.
- Hay un estado visual del barco (presente, en camino, ausente).
- Puedes mover el barco de una isla a otra con un solo clic.
- La transición simula navegación real con un retardo de 10 segundos.

Todo se orquesta desde una API interna que mantiene actualizado el estado global del barco.

---

## 🎨 Diseño visual

El proyecto incluye ilustraciones personalizadas en estilo **semi-realista digital**, con tres estados:

1. **Barco presente en la isla**: anclado cerca de la costa.
2. **Barco ausente**: la isla permanece vacía.
3. **Barco en movimiento**: el barco aparece alejándose, en medio de la navegación.

Estas imágenes no solo embellecen la interfaz, sino que refuerzan visualmente la lógica del sistema.

---

## 🚀 ¿Por qué es interesante?

- Simula un sistema distribuido en tiempo real con sincronización entre contenedores.
- Es una forma educativa, visual y divertida de entender conceptos como:
  - Estado global compartido
  - Comunicación entre servicios
  - Contenerización con Docker
- Perfecto para presentar en universidades, bootcamps o portfolios creativos.

---

## ⚙️ Tecnologías utilizadas

- Docker (contenedores individuales para cada isla + API)
- Node.js + Express (estado global del barco)
- Nginx (servir contenido web de cada isla)
- HTML, CSS, JS (interfaz interactiva)
- Imágenes originales generadas con IA

---

## 👨‍💻 Autor

**Arthur Rosales V.**  
Proyecto académico desarrollado con 💙 en DigitalOcean, como ejercicio creativo de sincronización web con contenedores.

---

##  Vista previa

<img src = "https://github.com/user-attachments/assets/5b35a518-8961-441f-8aae-c9dff4e78caa">


---

## 📬 ¿Comentarios o mejoras?

Este proyecto está pensado para evolucionar. Si tienes ideas o quieres construir encima de esto, adelante! 

---

