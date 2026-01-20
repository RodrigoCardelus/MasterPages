# 🧩 MasterPages – ASP.NET Web Forms

Proyecto de programación desarrollado en **C# / ASP.NET Web Forms** cuyo objetivo es practicar el uso de **Master Pages**, permitiendo definir una estructura visual común (layout) reutilizable por múltiples páginas del sitio.

El ejercicio refuerza la separación entre diseño y contenido, mejorando la organización y el mantenimiento de aplicaciones web.

---

## 🎯 Objetivo del Ejercicio

- Implementar **Master Pages** en ASP.NET
- Centralizar el diseño visual del sitio
- Reutilizar encabezado, menú y pie de página
- Separar estructura y contenido
- Reforzar buenas prácticas en aplicaciones web

---

## 🧱 Conceptos Aplicados

- ASP.NET Web Forms
- Master Pages
- Separación entre layout y contenido
- Code-behind (`.aspx.cs`)
- Programación Orientada a Objetos
- Desarrollo web estructurado

---
## 📂 Estructura del Proyecto

```
MasterPages
├── Site.Master                # Master Page principal
├── Site.Master.cs
│
├── Default.aspx               # Página de contenido
├── Default.aspx.cs
│
├── Web.config                 # Configuración del sitio
├── MasterPages.sln            # Solución Visual Studio
└── MasterPages.csproj
```


---

## ⚙️ Funcionamiento General

- La **Master Page** define la estructura común del sitio (layout)
- Las páginas de contenido heredan dicho diseño
- Cada página implementa únicamente su contenido específico
- El code-behind gestiona la lógica de cada página

---

## 🧰 Tecnologías Utilizadas

- C#
- ASP.NET Web Forms
- Master Pages
- Visual Studio

---

## ▶️ Cómo Ejecutar el Proyecto

1. Abrir la solución `MasterPages.sln` en **Visual Studio**
2. Ejecutar el proyecto web (**F5**)
3. Visualizar la página principal utilizando la Master Page
4. Modificar la Master Page para ver los cambios reflejados en todas las páginas

---

## 📚 Contexto Académico

Este proyecto forma parte de prácticas de **Desarrollo Web con ASP.NET**, orientadas a comprender el uso de Master Pages como mecanismo de reutilización y organización del diseño en aplicaciones web.

---

## 👨‍💻 Autor

**Rodrigo Cardelus**  
📍 Uruguay  
🎓 Analista en Programación – Próximo Analista en Sistemas  
🧠 Estudiante de Ciberseguridad  
💬 Apasionado por el desarrollo de software, la arquitectura web y las buenas prácticas

---

## 📌 Notas

Este proyecto es un **ejercicio académico**, enfocado en el aprendizaje de Master Pages.  
Puede ampliarse incorporando más páginas de contenido, estilos CSS o controles de navegación.

