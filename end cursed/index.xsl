<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="good">
        <div class="column">
            <div class="card">
                <div class="container">
                    <img alt="AT ONCE" style="width: 100%">
                        <xsl:attribute name="src">
                            <xsl:value-of select="image"/>
                        </xsl:attribute>
                    </img>
                    <div class="overlay">
                        <div class="text2">
                            <p>
                                <b>Название :</b>
                                <xsl:value-of select="name"/>
                            </p>
                            <p>
                                <b>Артикул:</b>
                                <xsl:value-of select="art"/>
                            </p>
                            <p>
                                <b>Калибр:</b>
                                <xsl:value-of select="cal"/>
                            </p>
                            <p>
                                <b>Зарядов:</b>
                                <xsl:value-of select="charges"/>
                            </p>
                        </div>
                    </div>
                </div>
                <a>
                    <xsl:attribute name="href">
                        <xsl:text>./good.html?id=</xsl:text>
                        <xsl:value-of select="id"/>
                    </xsl:attribute>
                    <xsl:value-of select="name"/>
                </a>
                <p class="price" style="color:red">
                    <xsl:value-of select="price"/>
                </p>
                <p class="typeOfGood">Фейерверк</p>
                <p class="addToCart">
                    <button >Добавить в корзину</button>
                </p>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport"
                      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <link rel="stylesheet" href="./styles/style.css"/>
                <title>Главная</title>
                <script defer="" src="./scripts/index.js"/>
            </head>
            <body>
                <nav id="myNav" class="overlay1">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&#10006;</a>
                    <div class="overlay1-content">
                        <a href="index.xml">Main</a>
                        <a href="about.html">About</a>
                        <a href="contact.html">Contact</a>
                    </div>
                </nav>

                <header class="header">
                    <div class="header-right">
                        <span style="cursor:pointer" onclick="openNav()">&#9776; </span>
                    </div>
                    <div class="companyName">Techies Shop</div>
                    <img class="logotype" src="./images/bomblogo.svg" alt="Pineapple"/>
                </header>

                <div class="hello">
                    <h2>Добро пожаловать!</h2>
                    <h2>Здесь Вы можете приобрести товары следующих категорий:</h2>
                    <button class="accordion">Фейерверки</button>
                    <div class="panel">
                        <p>Фейерверк - это разновидность пиротехники, которая представляет собой яркое и красочное
                            зрелище,
                            сопровождающееся звуковыми и световыми эффектами. Обычно фейерверки запускаются во время
                            праздников и
                            торжеств,
                            чтобы создать атмосферу радости и веселья. Однако, при использовании
                            фейерверков необходимо соблюдать меры безопасности, так как неправильное обращение с
                            пиротехникой может
                            привести к
                            опасным последствиям.
                        </p>
                    </div>
                    <button class="accordion">Петарды</button>
                    <div class="panel">
                        <p>Петарда - это одно из наиболее распространенных пиротехнических изделий,
                            которые часто используются в качестве развлечения или для создания звуковых эффектов во
                            время праздников и
                            торжеств.
                            Петарды обычно содержат взрывчатое вещество, которое может привести к травмам и повреждению
                            имущества,
                            если не использовать их правильно.
                            Поэтому необходимо соблюдать меры безопасности и не нарушать законы, касающиеся
                            использования
                            пиротехники..
                        </p>
                    </div>
                    <button class="accordion">Бенгальские огни</button>
                    <div class="panel">
                        <p>Бенгальский огонь - это еще одно пиротехническое изделие, которое используется для создания
                            визуальных
                            эффектов
                            во время различных праздников и торжеств. Он представляет собой горящую свечу, которая
                            обычно имеет яркий
                            цвет,
                            например, красный, зеленый или синий, и может длиться от нескольких секунд до нескольких
                            минут.
                            Бенгальские огни могут быть безопасными для использования, если соблюдать меры
                            предосторожности и
                            использовать
                            их только на открытом пространстве под наблюдением взрослых.
                            Однако, как и с любым пиротехническим изделием, необходимо быть осторожным и не нарушать
                            законы,
                            касающиеся их
                            использования.
                        </p>
                    </div>
                </div>


                <div class="slideshow-container">
                    <div class="mySlides fade">
                        <div class="numbertext">1/3</div>
                        <img src="./images/background.jpg" style="width:100%"/>

                    </div>


                    <div class="mySlides fade">
                        <div class="numbertext">2/3</div>
                        <img src="./images/petards.jpg" style="width:100%"/>

                    </div>


                    <div class="mySlides fade">
                        <div class="numbertext">3/3</div>
                        <img src="./images/sliderogni.jpg" style="width:100%"/>

                    </div>
                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
                <br/>
                <div class="dots" style="text-align: center;">
                    <span class="dot" onclick="currentSlide(1)"/>
                    <span class="dot" onclick="currentSlide(2)"/>
                    <span class="dot" onclick="currentSlide(3)"/>
                </div>


                <section class="row1">
                    <div class="left" style="background-color: #bbbbbb">
                        <h2>Каталог</h2>
                        <input type="text" id="mySearch" onkeyup="myFunction()" placeholder="Поиск товаров.."
                               title="Type in a category"/>
                        <ul id="myMenu">
                            <li>
                                <a href="good.html?id=1">Фейерверк "AT ONCE"</a>
                            </li>
                            <li>
                                <a href="good.html?id=2">Петарды "Корсар"</a>
                            </li>
                            <li>
                                <a href="good.html?id=3">Петарды "Дурында"</a>
                            </li>
                            <li>
                                <a href="good.html?id=4">Бенгальский огонь "Снеговик"</a>
                            </li>

                        </ul>
                    </div>

                </section>
                <div class="row">
                    <xsl:apply-templates select="goods/good"/>

                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
