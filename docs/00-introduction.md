<div style="display: flex; align-items: center; background-color: white; padding: 25px; border-radius: 10px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); border: 1px solid #EAECEE; font-family: 'Segoe UI', 'Roboto', sans-serif;">
    <div style="font-size: 4em; margin-right: 25px; user-select: none;">👋</div>
    <div>
        <h1 style="margin: 0; color: #333D47;">Введение</h1>
        <p style="margin: 5px 0 0 0; font-size: 1.1em; color: #586069;">Подготовка к погружению в мир универсальных клиентов баз данных.</p>
    </div>
</div>

<br>

Добро пожаловать в курс по DBeaver! Этот инструмент станет вашим надежным помощником в мире баз данных. Наша цель — научиться использовать его максимально эффективно. Поехали! 🚀

## 📚 Теория

### Что такое DBeaver и зачем он нужен?

Представьте, что у вас есть ящик с инструментами. Для одного винта нужна крестовая отвертка, для другого — плоская, для третьего — шестигранник. Неудобно, правда? В мире баз данных часто бывает так же: для PostgreSQL есть свой инструмент, для MS SQL Server — свой, и так далее.

**DBeaver** — это **универсальный SQL-клиент**, ваш личный швейцарский нож. Он позволяет подключаться к огромному количеству разных баз данных и управлять ими из одного окна.

<blockquote style="background-color: #F8F9FA; border-left: 4px solid #3498DB; padding: 15px; margin: 20px 0; color: #333D47;">
    <b>Ключевая идея:</b> Один инструмент для работы с PostgreSQL, MS SQL Server, SQLite, MySQL, Oracle и десятками других СУБД. Это экономит ваше время и упрощает жизнь.
</blockquote>

### DBeaver vs. Специализированные инструменты

Конечно, существуют и "родные" клиенты для многих СУБД:
* `pgAdmin` для PostgreSQL
* `SQL Server Management Studio (SSMS)` для MS SQL Server

Они отлично справляются со своими задачами, но если вы работаете с несколькими СУБД одновременно (а в карьере разработчика это случается постоянно), DBeaver становится незаменимым помощником.

### Обзор версий: Community vs. Enterprise

У DBeaver есть несколько версий, но нас интересуют две:
1.  **Community Edition (CE):** Полностью бесплатная, с открытым исходным кодом.
2.  **Enterprise Edition (EE):** Платная, с расширенной поддержкой NoSQL баз данных (вроде MongoDB), специальными драйверами и дополнительными функциями.

<blockquote style="background-color: #F8F9FA; border-left: 4px solid #3498DB; padding: 15px; margin: 20px 0; color: #333D47;">
    ✨ В рамках этого курса мы будем использовать <b>DBeaver Community Edition</b>. Её возможностей более чем достаточно для всех учебных и большинства профессиональных задач.
</blockquote>

### Для кого это пособие?

Этот курс разработан для студентов IT-специальностей. Мы предполагаем, что у вас уже есть базовое представление о том, что такое SQL и реляционные базы данных.

### Как работать с этим курсом?

Каждая глава построена по простому принципу:
* **Теория** 📖: Читаем, разбираемся в концепциях.
* **Практика** 💻: Делаем вместе по шагам, закрепляя знания.
* **Самостоятельная работа** 🤔: Проверяем себя, выполняя небольшие задания.

---

## 💻 Практика

🎯 **Цель:** Подготовиться к установке DBeaver.

Давайте найдем, где живет наш будущий инструмент.

1.  Перейдите на официальный сайт **<a href="https://dbeaver.io/" target="_blank" style="color: #3498DB;">dbeaver.io</a>**.
2.  Найдите на главной странице раздел "Download" (Загрузка).
3.  Определите, какая версия вам понадобится для установки на ваш компьютер (Windows x86_64, macOS Apple Silicon/Intel, Linux DEB/RPM). **Скачивать пока ничего не нужно!**

<br>

<div align="center">
    <a href="https://dbeaver.io/download/" target="_blank" title="Нажмите, чтобы перейти на страницу загрузки DBeaver">
        <img src="../assets/images/00-introduction/dbeaver_download_page_preview.png" alt="Страница загрузки DBeaver" style="border-radius: 10px; box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); max-width: 100%;">
    </a>
    <p style="color: #586069;"><i>Кликните на изображение, чтобы перейти на сайт</i></p>
</div>

---

## 🤔 Самостоятельная работа

Проверьте себя! Нажмите на каждый вопрос, чтобы увидеть ответ.

<style>
    details { margin-bottom: 10px; border-radius: 8px; }
    details > summary { padding: 15px; cursor: pointer; font-weight: bold; background-color: #F8F9FA; }
    details > p { padding: 15px; margin: 0; border-top: 1px solid #EAECEE; }
</style>

<details>
  <summary>Вопрос 1: Какое главное преимущество DBeaver перед pgAdmin или SSMS?</summary>
  <p><b>Ответ:</b> Универсальность. DBeaver позволяет работать с множеством разных СУБД из одного приложения.</p>
</details>

<details>
  <summary>Вопрос 2: Какую версию DBeaver мы будем использовать в этом курсе?</summary>
  <p><b>Ответ:</b> Бесплатную DBeaver Community Edition.</p>
</details>

<details>
  <summary>Вопрос 3: Из каких трех основных частей состоит каждая тема нашего пособия?</summary>
  <p><b>Ответ:</b> Теория, Практика и Самостоятельная работа.</p>
</details>

---

<div style="display: flex; justify-content: flex-end; align-items: center; margin-top: 30px;">
    <a href="01-first-steps/01-installation.md" style="background-color: #4CAF50; color: white; padding: 10px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer; border-radius: 8px; font-family: 'Segoe UI', 'Roboto', sans-serif; display: flex; align-items: center;">
        <span>Вперед: Установка</span> 
        <span style="font-size: 24px; margin-left: 10px; line-height: 1;">▶</span>
    </a>
</div>