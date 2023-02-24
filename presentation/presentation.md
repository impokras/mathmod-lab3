---
## Front matter
lang: ru-RU
title: Лабораторная работа № 3
author:
  - Покрас Илья Михайлович
group:
  - НФИбд-02-20, 1032200534
date: 2023, Москва

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---


## Цели

- Построение модели боевых действий между регулярными войсками на языках Julia и OpenModelica
- Построение модели боевых действий с участием регулярных войск и партизанских отрядов на языках Julia и OpenModelica

## Ход работы

Код программы Julia(рис. @fig:001):

![Код Julia](image/code-jl.png){#fig:001}

## Ход работы

Модель первого случая(рис. @fig:002):

![Модель Julia первого случая](image/model-jl(1).png){#fig:002}

## Ход работы

Модель второго случая(рис. @fig:003):

![Модель Julia второго случая](image/model-jl(2).png){#fig:003}

## Ход работы

Код первого случая OpenModelica(рис. @fig:004):

![Код OpenModelica первого случая](image/code-om(1).png){#fig:004}

## Ход работы

Модель первого случая OpenModelica(рис. @fig:005):

![Модель OpenModelica первого случая](image/model-om(1).png){#fig:005}

## Ход работы

Код второго случая OpenModelica(рис. @fig:006):

![Код OpenModelica второго случая](image/code-om(2).png){#fig:006}

## Ход работы

Модель второго случая OpenModelica(рис. @fig:007):

![Модель OpenModelica второго случая](image/model-om(2).png){#fig:007}


## Результаты

В ходе проделанно работы мы изучили модели Ланчестера для моделирования ведения боевых действий, а также построили математические модели на языке программирования Julia и OpenModelica