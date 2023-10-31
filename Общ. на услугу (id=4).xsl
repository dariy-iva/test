<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [
    <!ENTITY nbsp "&#160;"> 
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
                  
      <xsl:output method="html"/>  

<xsl:template match="/">

<head>
    <style type="text/css">

                                    /* Базовые стили текста*/
                                    .base-text {
                                    text-align: left;
                                    font-family: Arial;
                                    font-size: 12px;
                                    font-style: normal;
                                    color: #2D2D2D;
                                    }

                                    
                                    /* Базовые стили текста*/
                                    .small-text {
                                    text-align: left;
                                    font-family: Arial;
                                    font-size: 10px;
                                    font-style: normal;
                                    color: #2D2D2D;
                                    list-style-type: circle;
                                    }
    
    
                                    /* Базовые стили текста - фиолетовый жирный*/
                                    .base-text-colored {
                                    text-align: left;
                                    font-family: Arial;
                                    font-size: 12px;
                                    font-style: normal;
                                    font-weight: bold;
                                    color: #5B4660; 
                                    }
        
                                    .date-and-entryname {
                                    font-family: Arial;
                                    font-size: 12px;
                                    font-style: normal;
                                    color: #2D2D2D;
                                    border: 0px transparent inherit;
                                    border-spacing: 0;
                                    margin: 10px 0px;
                                    }

                                    .date-and-entryname-td {
                                    padding: 0px 10px;
                                    }
        
                                     .round_corners {
                                    border: 1px solid e1e1e1;
                                    border-radius: 10px;
                                    } 
                    
                 
                                    .table-itself
                                    {font-family: Arial;
                                    font-size: 14px;
                                    width: 100%; 
                                     /* padding: 1px 1px 1px;   */
                                    border-radius: 10px;
                                    /* -webkit-border-radius: 10px;
                                     -moz-border-radius: 10px;
                                    -khtml-border-radius: 10px; */
                                    border-spacing: 0; 
                                    border-collapse: separate;
                                    
                                    }

                                    #results_table tbody:last-child tr:last-child td:first-child {
                                        border-bottom-left-radius: 10px;
                                    }

                                    #results_table tbody:last-child tr:last-child td:last-child {
                                        border-bottom-right-radius: 10px;
                                    }


                                    #results_table tbody:first-child tr:first-child td:first-child {
                                        border-top-left-radius: 10px;
                                    }

                                    #results_table tbody:first-child tr:first-child td:last-child {
                                        border-top-right-radius: 10px;
                                    }
                    
                                    .table-head
                                    {
                                    background-color: #F9F9FF;          
                                    }

                                    .table-head td
                                    {
                                    background-color: #F9F9FF;
                                    padding: 10px 10px 10px 10px;       
                                    }
            
                                     .stripe-tbody
                                    {text-align: left;
                                    font-family: Arial;
                                    font-size: 14px; 
                                    /* background: #F9F9FF;  */
                                    background: #F9F9FF;
                                     border-bottom: 1px solid #e2e2e2; 
                                    width: 100%; 
                                    color: #2D2D2D;
                                    /* border-bottom: none;
                                    border-left: none;
                                    border-right: none;
                                    border-top: none; */
                                    
                                    }
                           
                                    .stripe-tbody:nth-child(even) {
                                    background-color: #FFFFFF;
                                    background: #FFFFFF;
                                    border-bottom: 1px solid #c7c7c7; 
                                    font-family: Arial;
                                    padding: 0px; 
                                    /* border-bottom: none;
                                    border-left: none;
                                    border-right: none;
                                    border-top: none; */
                                    }   
            
                                    .stripe-table
                                    {text-align: left;
                                    font-family: Arial;
                                    font-size: 14px; 
                                    width: 100%; 
                                    }
                    
                                    .qr-tbody
                                    {text-align: left;
                                    font-family: Arial;
                                    font-size: 14px; 
                                    background: #F9F9FF;
                                     border-bottom: 1px solid #e2e2e2; 
                                    width: 100%; 
                                    color: #2D2D2D;
                                                                      
                                    }
                    
                                     /* Названия параметров */
                                    .parameter_name {
                                    text-align: left;
                                    font-family: Arial;
                                    font-size: 12px;
                                    font-style: normal;
                                    margin: 10px 0px;
                                    color: #2D2D2D;
                                    padding: 5px 0px 15px 0px;
                                    }
                
                                    /* Значения результатов */
                                    .parameter_values {
                                    text-align: left;
                                    font-family: Arial;
                                    font-size: 12px;
                                    font-style: normal;
                                    
                                    margin: 10px 0px;
                                    color: #2D2D2D;
                                    padding: 5px 0px 15px 0px;
                                    }
                
                                    /* Значения референсов */
                                    .parameter_references {
                                    text-align: left;
                                    font-family: Arial;
                                    font-size: 12px;
                                    font-style: normal;
                                    margin: 10px 0px;
                                    color: #2D2D2D;
                                    padding: 5px 0px 15px 0px;
                                    }                    
                
                                    /* Заголовок в колонке 1 */        
                                    .table_caption1 {
                                    text-align: left;     
                                    font-family: Arial;
                                    font-style: normal;
                                    font-weight: bold;
                                    font-size: 11px;
                                    color: #5B4660; 
                                    margin: 14px 0px;
                                    padding: 15px 0px 15px 0px;
                                    }   
                
                                    /* Заголовки в колонках 2 и 3 */        
                                    .table_caption2 {
                                    text-align: left;     
                                    font-family: Arial;
                                    font-style: normal;
                                    font-weight: bold;
                                    font-size: 11px;
                                    padding: 15px 0px 15px 0px;
                                    color: #5B4660; 
                                    margin: 14px 0px;
                                    
                                    }   
            
                                    .result_td
                                    {
                                    padding: 10px 10px 10px 10px;
                                    border: 0px transparent inherit;
                                    border-spacing: 0
                                    
                                    }

                                    /* Комментарийи к диапазону (плюсы-минусы) */
                                    .plus_td
                                    {
                                    padding: 10px 0px 10px 10px;
                                    border: 0px transparent inherit;
                                    border-spacing: 0
                                    
                                    }
        
                                    /* Комментарии к параметрам */
                                    .parameter_comments {
                                    text-align: left;
                                    font-family: Arial;
                                    font-size: 10px;
                                    font-style: normal;
                                    margin: 10px 0px;
                                    color: #2D2D2D;
                                    padding: 5px 0px 15px 0px;
                                    }

                                    .parameter_comments_td {
                                    padding: 0px 10px 10px 10px;
                                    border: 0px transparent inherit;
                                    border-spacing: 0
                                    }
    </style> 
</head>

<!-- Условие для перевода на английский язык -->
<xsl:choose>
        <!-- Английский язык -->
        <xsl:when test="count(//more/printOnEng)>0">

            <br />

            <!-- Врач-направитель и отделение -->
            <xsl:if test="count(//parameter[@index='person']/person/fam)>0">
               <!-- <img width="13" align="middle" style="margin-top: -7" src="/img/doctor.png" alt="doctor"/>&nbsp; -->
         <text class="base-text-colored"><xsl:value-of select="concat(//parameter[@index='person']/person/fam,' ',//parameter[@index='person']/person/im,' ',//parameter[@index='person']/person/ot)"/>.
                </text>
                            <xsl:if test="count(//parameter[@index='department'])>0">
                        <text class="base-text"><xsl:value-of select="//parameter[@index='department']/value"/></text>  
                    </xsl:if>
                <hr style="width: 100%; Stroke: Solid; color: #5B4660; opacity: 10%" />
            </xsl:if>
        
              <!-- Дата и название анализа -->
        <table class="date-and-entryname" width="100%">
            <tr>
                <td class="date-and-entryname-td" style="text-align: left;">
                            <xsl:value-of select="//parameter[@index='serviceEntry']/serviceEntry/engvalue"/>
                </td>
                <td class="date-and-entryname-td" style="text-align: right;">
                    <!-- <xsl:choose>
                        <xsl:when test="count(//parameter[@index='container']/container/receiveDate)>0">    
                            <xsl:value-of select="//parameter[@index='container']/container/receiveDate"/>  
                        </xsl:when>                                                                 
                        <xsl:otherwise>--> <xsl:value-of select="//parameter[@index='date']/value"/> 
                        <!-- </xsl:otherwise>
                    </xsl:choose> -->
                </td>
            </tr>
        </table>
        
            <!-- Таблица с результатами -->
            <div class="round_corners">
            <table id="results_table" class="table-itself" width="100%">
                <tr class="table-head">
                    <td width="0.5%"> </td>
                    <td width="50%"> <text class="table_caption1">Name of laboratory research</text></td> 
                    <td width="25%"> <text class="table_caption2">Value</text></td> 
                    <td width="24.5%"> <text class="table_caption2">Reference range</text></td>
           
                </tr>
           <xsl:for-each select="//parameter">
    <xsl:if test="@virtual ='true'">
    <xsl:if test="not(@hidden)">
    <tbody class="stripe-tbody">
        <tr class="stripe-table">
            <!--Комментарий к интервалу (не используется) -->
            <td  class="plus_td" width="0.5%"></td>
            <!-- Название параметра -->
            <td class="result_td" width="50%"><text class="parameter_name"><xsl:value-of select="@engname"/></text></td> 
            <!-- Результат -->
            <td class="result_td" width="25%"><text class="parameter_values">
            <xsl:choose>
                    <xsl:when test="engvalue">
                        <xsl:value-of select="engvalue" disable-output-escaping="yes"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="value" disable-output-escaping="yes"/>
                    </xsl:otherwise>
                </xsl:choose>
             </text>
             </td> 
             <!-- Референсы -->
            <td class="result_td" width="24.5%"><text class="parameter_references">
				<xsl:choose>
                    <xsl:when test="count(@en_reference)>0">
                        <xsl:value-of select="@en_reference" disable-output-escaping="yes"/>
                    </xsl:when>
                    <xsl:when test="count(norm)=1">
                        <xsl:apply-templates select="norm/range"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="norm"/>
                    </xsl:otherwise>
                </xsl:choose>
                </text>
            </td>
        </tr>
        <xsl:if test="(@commentParameter)!='' or norm/range[@patology='true' and @suitable='true']/@rangeType!=''">
            <tr class="stripe-table">
                <td class="parameter_comments_td">
                </td>
                <td class="parameter_comments_td" colspan="3"> 
                    <text class="parameter_comments">
                        <xsl:if test="(@commentParameter)!=''">
                            <b>Comment: </b> <xsl:value-of select="//parameter[@index='container']/container/bioMaterialQuality"/> &nbsp; <xsl:value-of select="@commentParameter "/>&nbsp;
                        </xsl:if>
                        <xsl:if test="norm/range[@patology='true' and @suitable='true']/@rangeType!=''">
                            <b>Interpretation: </b> <xsl:value-of select="norm/range[@patology='true' and @suitable='true']/@rangeType"/>
                        </xsl:if>
                    </text>
                </td>
            </tr>
        </xsl:if>
    </tbody>
    </xsl:if>
    </xsl:if>
</xsl:for-each>

            </table>
            </div>
            <br />
            <!-- Выводим для 6699 дату забора, регистрации и валидации -->
                <xsl:if test="//parameter[@index='serviceEntry']/serviceEntry/value='Выявление антигена SARS-CoV-2 (BIOCREDIT COVID-19 Ag)' or //parameter[@index='serviceEntry']/value='Выявление антигена SARS-CoV-2 (BIOCREDIT COVID-19 Ag)' 
                or //parameter[@index='serviceEntry']/value='Выявление РНК вируса SARS-CoV-2 Covid-19'
                or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК вируса SARS-CoV-2 Covid-19'
                or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)' 
                or //parameter[@index='serviceEntry']/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)'"> 
                <text class="base-text"> 
                Date collected:  <xsl:value-of select="//parameter[@index='date']/value"/>&#160;<xsl:value-of select="//parameter[@index='draw_time']/value"/>
                <br />
                Date received: <xsl:value-of select="//parameter[@index='container']/container/receiveTime"/>
                <br />
                Date released:  <xsl:value-of select="//validation/date"/>
                <br />
                </text>
                </xsl:if> 

          <!-- Выводим для 7030 выводим информацию о тест-системах -->
         <xsl:if test="//parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)' 
         or //parameter[@index='serviceEntry']/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)'"> 
         <text class="base-text"> 
            Test was performed by the nucleic acid amplification method (NAAT) - RT and PCR in real time, the test system "AmpliTest VOC v.3", sensitivity 1*10^3 RNA copies/ml.
            <br /><br />
            If the test results are positive, seek medical help at your place of residence without visiting medical organizations. You must comply with the mandatory isolation regime until you
fully recover.
         </text>

         <br />
         </xsl:if>

                 <!-- Выводим для 6666 тоже выводим доп.фразу -->
                <xsl:if test="//parameter[@index='serviceEntry']/value='Выявление РНК вируса SARS-CoV-2 Covid-19' or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК вируса SARS-CoV-2 Covid-19'"> 
   <text class="small-text">    
    <br /> 
    If the test results are positive, seek medical help at your place of residence without visiting medical organizations.
You must comply with the mandatory isolation regime until you fully recover.
Methods:
 <ul>
  <li>This Test is a high-throughput version of the SARS-CoV2 Realtime RT-PCR test and has been validated in accordance with the guidance issued by The Ministry of Health of the Russian Federation and the World Health Organization (March 19, 2020). </li>
  <li>This test has been authorized only for the detection of nucleic acid from SARS-CoV-2, not for any other viruses or pathogens.</li>
  <li>The test was validated for use with specimens obtained via nasopharyngeal, oropharyngeal, nasal swabs, bronchoalveolar lavage, endotracheal aspirate, nasopharyngeal aspirate or sputum.</li>
  <li>Method: RNA is isolated from specimens using SARS-CoV-2/SARS-CoV Multiplex REAL-TIME PCR Detection Kit (DNA-Technology Research &amp; Production, LLC, RU-IVD №RZN 2020/9948 April 01, 2020, CE-IVD №FD 9031-2020 April 16, 2020), is reverse transcribed to cDNA, and subsequently amplified in the DTprime Real-Time PCR instrument (DNA-Technology Research &amp; Production, LLC). This system provides qualitative detection of nucleic acid from SARS-CoV-2.</li>
</ul> 
Limitations:
<ul>
    <li>Analysts are to be trained and familiar with testing procedures and interpretation of results prior to performing the assay.</li>
    <li>Positive results are indicative of active infection with SARS-CoV-2 but do not rule out bacterial infection or coinfection with other viruses.</li>
    <li>Negative results do not preclude SARS-CoV-2 infection and should not be used as the sole basis for patient management decisions. False negative results may occur if amplification inhibitors are present in the specimen or if inadequate numbers of organisms are present in the specimen due to improper collection, transportation, or handling.</li>
    <li>If the virus mutates in the RT-PCR target region, SARS-CoV-2 may not be detected or may be detected less predictably.</li>
</ul>
</text>
        </xsl:if> 
        
        <xsl:if test="//parameter[@index='serviceEntry']/value!='Выявление РНК вируса SARS-CoV-2 Covid-19' or //parameter[@index='serviceEntry']/serviceEntry/value!='Выявление РНК вируса SARS-CoV-2 Covid-19'"> 
             <br />
            <text class="base-text">The result of laboratory studies should be interpreted in conjunction with other medical examination data and the clinical picture.                                                                                                                                                                                     </text> 
        </xsl:if> 
           <br />
        
        <!-- QR-код -->
            <xsl:if test="count(//uuidQRcode)>0">
            <div class="round_corners">
                <table class="qr-tbody" width="100%">
                    <tr>
                        <td class="result_td" width="1%"> 
                                <xsl:variable name = "img">
                                    <xsl:value-of select="//uuidQRcodeEng"/>
                                </xsl:variable>     
                                <img alt="QR" height="70px" src="data:image/png;base64,{$img}"/>
                            
                        </td>
                        <td class="result_td">
                            <text class="base-text"><b>Confirmation of test result <xsl:value-of select="//parameter[@index='serviceEntry']/value"/></b></text><br/>
                            <text class="base-text">This page confirms the authenticity of results of COVID-19 tests issued by The Medical Сompany Labstory, Ltd. All fields on printed results are required to match with this page.</text>
                        </td>
                    </tr>
                </table>
            </div>
            <br />
            </xsl:if>
         <!-- QR-код -->            
        
        
        <!-- ПОДПИСЬ -->
    <hr style="width: 100%; Stroke: Solid; color: #5B4660; opacity: 10%" />

        <xsl:variable name="date" select="//parameter[@index='date']/value"/>
        <xsl:variable name="day" select="substring($date, 1,2)"/>
        <xsl:variable name="month" select="substring($date, 4,2)"/>
        <xsl:variable name="year" select="substring($date, 7,4)"/>
        <xsl:variable name="revdate" select="concat($year, $month, $day)"/>

        <xsl:choose>
                <xsl:when test="//parameter[@index='serviceEntry']/serviceEntry/code='790'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1100'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1101'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1103'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1111'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1112'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1115'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1116'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1118'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1557'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='21276'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='21277'    ">
        <table width="100%">
            <tr>
              <td width="1%">
                <img alt="Награда правительства СПб" height="60px" src="img/achievments1.png"></img>
              </td>
              <td width="1%">
                <img alt="Награда правительства РФ" height="60px" src="img/achievments2.png"></img>
              </td>
              <td align="right">
                <img alt="Подпись и печать" height="130px" src="img/signs/sign_rumyanceva.png"></img>
              </td>
              <td>
                 <text class="base-text"><nobr> <b> Rumiantseva E. V. </b> </nobr></text><br/>
                 <text class="base-text"><nobr> The head of the microbiology laboratory</nobr> </text> 
              </td>
            </tr>  
        </table>
        </xsl:when>
        <xsl:otherwise>
        <table width="100%">
            <tr>
            <td width="1%">
                <img alt="Награда правительства СПб" height="60px" src="img/achievments1.png"></img>
            </td>
            <td width="1%">
                <img alt="Награда правительства РФ" height="60px" src="img/achievments2.png"></img>
            </td>
            <td align="right">
                <img alt="Подпись и печать" height="130px" src="img/signs/sign_chursina.png"></img>
            </td>
            <td>
                <text class="base-text"><nobr> Authorization: Director of laboratory, MD</nobr> </text> 
                <text class="base-text"><nobr> <b>  Chursina N. Yu. </b> </nobr></text><br/>
            </td>
            </tr>  
        </table>
        </xsl:otherwise>
        </xsl:choose>


    <!-- ПОДПИСЬ -->                
            </xsl:when>    
        <!-- Русский язык -->
        
                <xsl:otherwise> 

<br />

	<!-- Врач-направитель и отделение -->
    <xsl:if test="count(//parameter[@index='person']/person/fam)>0">
       <!-- <img width="13" align="middle" style="margin-top: -7" src="/img/doctor.png" alt="doctor"/>&nbsp; -->
 <text class="base-text-colored"><xsl:value-of select="concat(//parameter[@index='person']/person/fam,' ',//parameter[@index='person']/person/im,' ',//parameter[@index='person']/person/ot)"/>.
        </text>
                    <xsl:if test="count(//parameter[@index='department'])>0">
	            <text class="base-text"><xsl:value-of select="//parameter[@index='department']/value"/></text>  
            </xsl:if>
        <hr style="width: 100%; Stroke: Solid; color: #5B4660; opacity: 10%" />
    </xsl:if>

      <!-- Дата и название анализа -->
<table class="date-and-entryname" width="100%">
    <tr>
        <td class="date-and-entryname-td" style="text-align: left;">
            <xsl:choose>
                <xsl:when test="count(//parameter[@index='serviceEntry']/value)>0">
                    <xsl:value-of select="//parameter[@index='serviceEntry']/value"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="//parameter[@index='serviceEntry']/serviceEntry/value"/>
                </xsl:otherwise>
             </xsl:choose>
        </td>
        <td class="date-and-entryname-td" style="text-align: right;">
            <!-- <xsl:choose>
                <xsl:when test="count(//parameter[@index='container']/container/receiveDate)>0">    
                    <xsl:value-of select="//parameter[@index='container']/container/receiveDate"/>  
                </xsl:when>                                                                 
                <xsl:otherwise>--> <xsl:value-of select="//parameter[@index='date']/value"/> 
                <!-- </xsl:otherwise>
            </xsl:choose> -->
        </td>
    </tr>
</table>

    <!-- Таблица с результатами -->
    <div class="round_corners">
    <table id="results_table" class="table-itself" width="100%">
        <tr class="table-head">
            <td width="0.5%"> </td>
            <td width="50%"> <text class="table_caption1">Наименование лабораторного исследования</text></td> 
            <td width="25%"> <text class="table_caption2">Результат</text></td> 
            <td width="24.5%"> <text class="table_caption2">Референсные интервалы</text></td>
        </tr>
     <xsl:for-each select="//parameter">

<xsl:if test="@virtual ='true'">
    <xsl:if test="not(@hidden)">
        <!-- <xsl:if test="value!=null and value!='' and value!=' '"> -->
    <tbody class="stripe-tbody">
        <tr class="stripe-table">
            <!--Комментарий к интервалу (не используется) -->
            <td  class="plus_td" width="0.5%"></td>
            <!-- Название параметра -->
            <td class="result_td" width="50%"><text class="parameter_name"><xsl:value-of select="@name"/></text></td> 
            <!-- Результат -->
            <td class="result_td" width="25%"><text class="parameter_values"><xsl:value-of select="value" disable-output-escaping="yes"/>
             <!-- <xsl:if test="value/@patology ='true'"> 
               &nbsp;<img width="13" align="middle" style="margin-top: -7" src="/img/patology.png" alt="patology"/>
             </xsl:if> -->
             </text>
             </td> 
             <!-- Референсы -->
            <td class="result_td" width="24.5%"><text class="parameter_references">
				<xsl:choose>
                    <xsl:when test="count(@reference)>0">
                        <xsl:value-of select="@reference" disable-output-escaping="yes"/>
                    </xsl:when>
                    <xsl:when test="count(norm)=1">
                        <xsl:apply-templates select="norm/range"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="norm"/>
                    </xsl:otherwise>
                </xsl:choose>
                </text>
            </td>
        </tr>
        <!-- Если комментарии к параметру или биоматериалу присутствуют, выводим их в отдельной подстроке -->
        <!-- <xsl:if test="(@commentParameter)!=''">
            <tr class="stripe-table">
                <td class="parameter_comments_td">
                </td>
                <td class="parameter_comments_td" colspan="3"> 
                  <text class="parameter_comments">  <b>Комментарий:</b> <xsl:value-of select="//parameter[@index='container']/container/bioMaterialQuality"/> &nbsp; <xsl:value-of select="@commentParameter "/></text>
                </td>
            </tr>
        </xsl:if> -->
        <!-- Если комментарии к параметру или биоматериалу присутствуют, выводим их в отдельной подстроке -->
        <xsl:if test="(@commentParameter)!='' or norm/range[@patology='true' and @suitable='true']/@rangeType!=''">
            <tr class="stripe-table">
                <td class="parameter_comments_td">
                </td>
                <td class="parameter_comments_td" colspan="3"> 
                    <text class="parameter_comments">
                        <xsl:if test="(@commentParameter)!=''">
                            <b>Комментарий: </b> <xsl:value-of select="//parameter[@index='container']/container/bioMaterialQuality"/> &nbsp; <xsl:value-of select="@commentParameter "/>&nbsp;
                        </xsl:if>
                        <xsl:if test="norm/range[@patology='true' and @suitable='true']/@rangeType!=''">
                            <b>Интерпретация результата: </b> <xsl:value-of select="norm/range[@patology='true' and @suitable='true']/@rangeType"/>
                        </xsl:if>
                    </text>
                </td>
            </tr>
        </xsl:if>
    </tbody>
    <!-- </xsl:if> -->
    </xsl:if>
    </xsl:if>

</xsl:for-each>


    </table>
    </div>
    <br />
    <!-- Выводим для 6699, 6666 b 7030 дату забора, регистрации и валидации -->
        <xsl:if test="//parameter[@index='serviceEntry']/serviceEntry/value='Выявление антигена SARS-CoV-2 (BIOCREDIT COVID-19 Ag)' 
        or //parameter[@index='serviceEntry']/value='Выявление антигена SARS-CoV-2 (BIOCREDIT COVID-19 Ag)' 
                or //parameter[@index='serviceEntry']/value='Выявление РНК вируса SARS-CoV-2 Covid-19'
                or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК вируса SARS-CoV-2 Covid-19'
                or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)'"> 
        <text class="base-text"> 
        Дата забора биоматериала: <xsl:value-of select="//parameter[@index='date']/value"/>&#160;<xsl:value-of select="//parameter[@index='draw_time']/value"/>
        <br />
        Время регистрации анализа: <xsl:value-of select="//parameter[@index='container']/container/receiveTime"/>
        <br />
        Время готовности результата: <xsl:value-of select="//validation/date"/>
        <br />
        </text>
        <br />
        </xsl:if> 

         <!-- Выводим для 7030 выводим информацию о тест-системах -->
         <xsl:if test="//parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)' 
         or //parameter[@index='serviceEntry']/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)'"> 
         <text class="base-text"> 
         Исследование выполнено методом амплификации нуклеиновых кислот (NAAT) - ОТ и ПЦР в режиме реального времени, тест-система "АмплиТест VOC v.3", чувствительность 1*10^3 копий РНК/мл.

         </text>
         <br />
         </xsl:if>

 <!-- Выводим для 6699 выводим еще одну доп.фразу -->
                <xsl:if test="//parameter[@index='serviceEntry']/serviceEntry/value='Выявление антигена SARS-CoV-2 (BIOCREDIT COVID-19 Ag)' 
        or //parameter[@index='serviceEntry']/value='Выявление антигена SARS-CoV-2 (BIOCREDIT COVID-19 Ag)'"> 
        <text class="base-text"> 
        <br />
        При получении положительного результата исследования рекомендуется пройти дополнительное исследование на наличие вируса SARS-Cov-2 методом ПЦР.
        </text>
        <br />
        </xsl:if> 
 <!-- Выводим для 6666 и 7070 тоже выводим доп.фразу -->
                <xsl:if test="//parameter[@index='serviceEntry']/value='Выявление РНК вируса SARS-CoV-2 Covid-19' 
                or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК вируса SARS-CoV-2 Covid-19'
                or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК коронавируса SARS-CoV-2 генетических вариантов Omicron и Delta (ПЦР)'"> 
        <text class="base-text"> 
         <strong>При положительном результате теста обратитесь за медицинской помощью по месту жительства без посещения медицинских организаций. Вы обязаны соблюдать обязательный режим изоляции до полного выздоровления.</strong>
        <br />
        </text>
        </xsl:if> 

                                <!-- Анамнез/комментарий -->
    <xsl:if test="count(//parameter[@index='comment']/value)>0">
    <xsl:if test="//parameter[@index='comment']/value!=''">
        <br/><text class="base-text">Анамнез: <xsl:value-of select="//parameter[@index='comment']/value"/></text><br/>
    </xsl:if>
    </xsl:if>

                <!-- комментарий -->
    <xsl:if test="count(//parameter[@index='comm']/value)>0">
    <xsl:if test="//parameter[@index='comm']/value!=''">
        <br/><text class="base-text">Комментарий: <xsl:value-of select="//parameter[@index='comm']/value"/></text><br/>
    </xsl:if>
    </xsl:if>


<!-- Убираем для ковида 6666 все эти фразы, анамнез и анализатор -->
<xsl:if test="//parameter[@index='serviceEntry']/value!='Выявление РНК вируса SARS-CoV-2 Covid-19' or //parameter[@index='serviceEntry']/serviceEntry/value!='Выявление РНК вируса SARS-CoV-2 Covid-19'"> 
    <!-- Условие: если выполняется код 5 (т.е. анализатор Vescube), то не выводим название анализатора -->
    <xsl:if test="count(//parameter[@index='serviceEntry']/serviceEntry/analyzator)>0">
        <xsl:choose>
            <xsl:when test="//parameter[@index='serviceEntry']/serviceEntry/analyzator='Ves-Matic Cube 80'">
            </xsl:when>
            <xsl:otherwise>
              <br /><text class="base-text">  <b> Исследование выполнено на анализаторе </b> <xsl:value-of select="//parameter[@index='serviceEntry']/serviceEntry/analyzator"/></text> <br />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:if>



     <br />
    <text class="base-text">Результат лабораторных исследований должен быть интерпретирован в комплексе с другими данными медицинского обследования и клинической картиной.</text> 
</xsl:if>
   <br />
    <br />

<!-- QR-код -->
    <xsl:if test="count(//uuidQRcode)>0">
    <div class="round_corners">
        <table class="qr-tbody" width="100%">
            <tr>
                <td class="result_td" width="1%"> 
                        <xsl:variable name = "img">
                            <xsl:value-of select="//uuidQRcode"/>
                        </xsl:variable>     
                        <img alt="QR" height="70px" src="data:image/png;base64,{$img}"/>
                    
                </td>
                <td class="result_td">
                    <text class="base-text"><b>Проверка действительности анализа <xsl:value-of select="//parameter[@index='serviceEntry']/value"/></b></text><br/>
                    <text class="base-text">Здесь вы можете проверить подлинность вашего анализа. Все поля на этом сайте должны совпадать с информацией на вашем бланке. Чтобы перейти на сайт, наведите камеру своего телефона на QR-код либо воспользуйтесь специальным приложением.</text>
                </td>
            </tr>
        </table>
    </div>
    <br />
    </xsl:if>
 <!-- QR-код -->            


     <!-- ПОДПИСЬ -->
    <hr style="width: 100%; Stroke: Solid; color: #5B4660; opacity: 10%" />

        <xsl:variable name="date" select="//parameter[@index='date']/value"/>
        <xsl:variable name="day" select="substring($date, 1,2)"/>
        <xsl:variable name="month" select="substring($date, 4,2)"/>
        <xsl:variable name="year" select="substring($date, 7,4)"/>
        <xsl:variable name="revdate" select="concat($year, $month, $day)"/>

        <xsl:choose>
        <xsl:when test="number($revdate) &lt; number(20191101)">
        <table width="100%">
            <tr>
              <td width="1%">
                <img alt="Награда правительства СПб" height="60px" src="img/achievments1.png"></img>
              </td>
              <td width="1%">
                <img alt="Награда правительства РФ" height="60px" src="img/achievments2.png"></img>
              </td>
              <td align="right">
                <img alt="Подпись и печать" height="130px" src="img/signs/sign_ivanova.jpg"></img>
              </td>
              <td>
                 <text class="base-text"><nobr> <b> Иванова Л. И. </b></nobr> </text><br/>
                 <text class="base-text"> Директор по качеству лабораторных исследований, д.м.н. </text> 
              </td>
            </tr>  
        </table>
        </xsl:when>
        <xsl:when test="//parameter[@index='serviceEntry']/serviceEntry/code='790'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1100'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1101'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1103'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1111'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1112'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1115'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1116'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1118'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='1557'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='21276'
                     or //parameter[@index='serviceEntry']/serviceEntry/code='21277'    ">
        <table width="100%">
            <tr>
              <td width="1%">
                <img alt="Награда правительства СПб" height="60px" src="img/achievments1.png"></img>
              </td>
              <td width="1%">
                <img alt="Награда правительства РФ" height="60px" src="img/achievments2.png"></img>
              </td>
              <td align="right">
                <img alt="Подпись и печать" height="130px" src="img/signs/sign_rumyanceva.png"></img>
              </td>
              <td>
                 <text class="base-text"><nobr> <b> Румянцева Е.В. </b> </nobr></text><br/>
                 <text class="base-text"><nobr> Заведующий микробиологической лабораторией</nobr> </text> 
              </td>
            </tr>  
        </table>
        </xsl:when>
        <xsl:otherwise>
        <table width="100%">
            <tr>
              <td width="1%">
                <img alt="Награда правительства СПб" height="60px" src="img/achievments1.png"></img>
              </td>
              <td width="1%">
                <img alt="Награда правительства РФ" height="60px" src="img/achievments2.png"></img>
              </td>
              <td align="right">
                <img alt="Подпись и печать" height="130px" src="img/signs/sign_chursina.png"></img>
              </td>
                <xsl:choose>
                    <xsl:when test="//parameter[@index='serviceEntry']/value='Выявление РНК вируса SARS-CoV-2 Covid-19'
                      or //parameter[@index='serviceEntry']/serviceEntry/value='Выявление РНК вируса SARS-CoV-2 Covid-19'">
                        <td>
                            <text class="base-text"><nobr><b> Чурсина Н.Ю.</b></nobr> </text><br/>
                            <text class="base-text"><nobr>Заведующая лабораторией,</nobr></text><br/>
                            <text class="base-text"><nobr>врач КДЛ</nobr></text><br/>
                        </td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td>
                            <text class="base-text"><nobr> <b> Чурсина Н.Ю. </b> </nobr></text><br/>
                            <text class="base-text"><nobr> Заведующая лабораторией</nobr> </text>
                        </td>
                    </xsl:otherwise>
                </xsl:choose>
            </tr>  
        </table>
        </xsl:otherwise>
        </xsl:choose>


    <!-- ПОДПИСЬ -->

</xsl:otherwise>
</xsl:choose>

</xsl:template> 

                          

<!-- Темплейты с нормами и диапазонами --> 
<xsl:template match="norm">   
    <xsl:value-of select ="@name"/>-  <xsl:apply-templates select="range"/> &nbsp;
</xsl:template>
<xsl:template match="range">
    <xsl:if test="@patology='false'" >
        <xsl:if test="@rangeType!=''" >
            <xsl:value-of select ="@rangeType"/> &nbsp;
        </xsl:if>
        <xsl:value-of select="."/><xsl:if test="position() != last()"><br/></xsl:if>
    </xsl:if>                          
</xsl:template>



                     
</xsl:stylesheet>









