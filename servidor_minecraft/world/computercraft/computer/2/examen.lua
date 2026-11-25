-- Examen Interactivo de Fitopatologia Agrícola (CC: Tweaked)
-- Adaptado para pantallas estándar de Minecraft

local questions = {
    {
        category = "Royas (Pucciniales)",
        question = "¿Por que la fase uredinial es responsable de las epidemias policiclicas?",
        options = {
            "A. Genera teliosporas de resistencia que germinan inmediatamente.",
            "B. Produce urediniosporas dicarioticas diseminadas por viento que reinfectan rapido.",
            "C. Es la unica fase que requiere obligatoriamente hospedante secundario.",
            "D. Vive saprofiticamente en el suelo durante anos sin tejido vivo."
        },
        correct = 2,
        explanation = "Las urediniosporas son asexuales y se repiten rapidamente en pocas semanas."
    },
    {
        category = "Mildius vs Oidios",
        question = "¿Por que el azufre es efectivo contra oidios pero inútil contra mildius?",
        options = {
            "A. Los oidios absorben el azufre por sus estomas.",
            "B. Los mildius son oomicetes con celulosa en vez de quitina en su pared celular.",
            "C. Los oidios crecen internamente en el xilema donde actua el azufre.",
            "D. Los mildius secretan enzimas que neutralizan el azufre."
        },
        correct = 2,
        explanation = "Los mildius son oomicetes (pared de celulosa) y no responden al azufre como los hongos verdaderos."
    },
    {
        category = "Epidemiologia Hidrica",
        question = "¿Por que las lluvias lavan el oidio pero expanden agresivamente el mildiu?",
        options = {
            "A. El agua rompe el micelio del oidio y da la lamina necesaria a las zoosporas del mildiu.",
            "B. La lluvia destruye los estomas impidiendo el avance del mildiu.",
            "C. El oidio es subterraneo y se ahoga con la lluvia.",
            "D. El agua eleva la temperatura foliar por encima del umbral del mildiu."
        },
        correct = 1,
        explanation = "Los mildius requieren agua liquida para sus zoosporas; el oidio es epifitico y se lava."
    },
    {
        category = "Carbones (Ustilaginales)",
        question = "¿Cual es la caracteristica distintiva de las agallas de Ustilago maydis?",
        options = {
            "A. Son agallas radiculares inducidas por nematodos.",
            "B. Son tumoraciones en mazorcas/tallos que liberan teliosporas negras al romperse.",
            "C. Son agallas lenosas que tardan varios anos en desarrollarse.",
            "D. Bloquean totalmente el flujo de agua en el xilema."
        },
        correct = 2,
        explanation = "Forma agallas carnosas llenas de teliosporas pulverulentas oscuras."
    },
    {
        category = "Manejo Integrado",
        question = "¿Cual es el fundamento agronómico de cambiar riego por aspersion a goteo ante roya?",
        options = {
            "A. Evitar mojar el follaje eliminando la lamina de agua que ayuda al patogeno.",
            "B. Aumentar sales en suelo para quemar el micelio interno.",
            "C. Estimular raices secundarias para compensar el dano foliar.",
            "D. Reducir humedad del suelo para deshidratar el hongo."
        },
        correct = 1,
        explanation = "Mantener el follaje seco evita la diseminacion y microclimas humedos."
    },
    {
        category = "Oidios (Erysiphales)",
        question = "¿Cual es la funcion principal de los cleistotecios al final de temporada?",
        options = {
            "A. Capturar insectos vectores en invierno.",
            "B. Actuar como estructuras de resistencia sexual para sobrevivir el invierno.",
            "C. Absorber exceso de fertilizante del suelo.",
            "D. Sintetizar antibioticos contra bacterias."
        },
        correct = 2,
        explanation = "Son cuerpos de resistencia cerrados que albergan ascosporas en los rastrojos."
    },
    {
        category = "Diagnostico Microscopico",
        question = "Un raspado de ceniza foliar muestra cadenas de esporas hialinas. Corresponden a:",
        options = {
            "A. Esporangioforos con zoosporas de Peronospora.",
            "B. Conidias en cadenas tipicas del genero anamorfo Oidium.",
            "C. Teliosporas bicelulares de Puccinia.",
            "D. Bacterias fitopatogenas en division."
        },
        correct = 2,
        explanation = "El signo clasico de Oidium son cadenas de conidias unicelulares hialinas."
    },
    {
        category = "Mildius (Peronosporales)",
        question = "¿Por que las manchas de mildiu en lechuga son angulares y delimitadas por venas?",
        options = {
            "A. El hongo excreta toxinas por el floema.",
            "B. Las nervaduras actuan como barreras anatomicas al micelio intercelular.",
            "C. Las nervaduras son inmunes al ataque.",
            "D. Los vectores caminan solo por las venas."
        },
        correct = 2,
        explanation = "Las venas delimitan el avance del micelio en el mesofilo generando manchas angulares."
    },
    {
        category = "Epidemiologia de Royas",
        question = "¿Por que es clave el periodo de incubacion en el manejo de royas?",
        options = {
            "A. Permite aplicar fungicidas cuando cambia el color de hoja.",
            "B. La planta luce asintomatica pero el patogeno avanza, exigiendo control preventivo.",
            "C. Indica el tiempo en que muere el hongo sin lluvia.",
            "D. Es cuando el hongo se alimenta del suelo."
        },
        correct = 2,
        explanation = "Durante la incubacion no hay pustulas visibles; requiere prevencion climatica."
    },
    {
        category = "Carbones (Ustilaginales)",
        question = "¿Como se diferencia el carbon desnudo (U. nuda) del cubierto (U. hordei)?",
        options = {
            "A. El desnudo deja esporas al viento; el cubierto las retiene en una membrana.",
            "B. El desnudo ataca raices y el cubierto hojas.",
            "C. El desnudo es causado por bacterias.",
            "D. El cubierto no produce esporas de resistencia."
        },
        correct = 1,
        explanation = "El carbon desnudo destruye las glumas liberando las esporas al aire libre."
    },
    {
        category = "Fisiologia de Oidios",
        question = "¿Cual es la funcion principal de los haustorios en oidios?",
        options = {
            "A. Perforar el xilema para tapar el agua.",
            "B. Penetrar pared celular epidermica para absorber nutrientes sin matar la celula.",
            "C. Fijar la planta al suelo.",
            "D. Absorber agua de la atmosfera."
        },
        correct = 2,
        explanation = "Los haustorios absorben nutrientes manteniendo viva la celula epidermica."
    },
    {
        category = "Manejo de Mildius",
        question = "¿Que productos quimicos son adecuados para prevenir mildius con alta humedad?",
        options = {
            "A. Fungicidas especificos para oomicetes (Metalaxil/Fosetyl-Al) y cupricos.",
            "B. Insecticidas piretroides.",
            "C. Herbicidas hormonales.",
            "D. Bactericidas de estreptomicina."
        },
        correct = 1,
        explanation = "Al ser oomicetes no responden a fungicidas convencionales, sino a especificos."
    },
    {
        category = "Nutricion y Patogenesis",
        question = "¿Por que el exceso de nitrogeno favorece los ataques de oidios y mildius?",
        options = {
            "A. Acidifica el suelo matando microbios beneficos.",
            "B. Genera tejidos suculentos con paredes delgadas faciles de penetrar.",
            "C. Atrae insectos vectores.",
            "D. Inhibe la clorofila."
        },
        correct = 2,
        explanation = "Produce tejidos tiernos con alta disponibilidad de aminoacidos para biotrofos."
    },
    {
        category = "Ciclo de Royas",
        question = "¿Que rol cumple el hospedante secundario en royas heteroecias?",
        options = {
            "A. Permite completar la fase sexual e incrementa la variabilidad genetica.",
            "B. Sirve como trampa para eliminar el hongo.",
            "C. Evita producir esporas en invierno.",
            "D. Vuelve al hongo un saprofito."
        },
        correct = 1,
        explanation = "Permite completar las 5 fases del ciclo y recombinar genes."
    },
    {
        category = "Oidios y Radiacion",
        question = "¿Que factor ambiental limita la germinacion de conidias de oidio en campo?",
        options = {
            "A. Alta radiacion UV directa y temperaturas extremas que desecan las esporas.",
            "B. Falta de oxigeno en la noche.",
            "C. Presencia de lombrices foliares.",
            "D. Baja concentracion de CO2."
        },
        correct = 1,
        explanation = "La luz solar directa (UV) y la deshidratacion destruyen las conidias expuestas."
    },
    {
        category = "Diagnostico Diferencial",
        question = "¿Como se diferencia el signo visual de un mildiu frente a un oidio en hoja?",
        options = {
            "A. Mildiu forma fieltro en enves; oidio forma polvo ceniciento en ambas caras.",
            "B. Oidio produce agallas y mildiu pudricion radicular.",
            "C. Mildiu aparece solo en raices.",
            "D. No hay diferencia visual."
        },
        correct = 1,
        explanation = "Mildiu sale por estomas (enves); oidio es totalmente epifitico (haz y enves)."
    },
    {
        category = "Oosporas en Mildius",
        question = "Las oosporas producidas por los mildius son:",
        options = {
            "A. Esporas de resistencia sexual con paredes gruesas para sobrevivir en suelo.",
            "B. Esporas asexuales con 4 flagelos.",
            "C. Estructuras fijadoras de nitrogeno.",
            "D. Semillas modificadas."
        },
        correct = 1,
        explanation = "Son estructuras de resistencia sexual formadas por union de oogonio y anteridio."
    },
    {
        category = "Ustilaginales - Hospedantes",
        question = "¿Como infecta Ustilago tritici (carbon del trigo) a su hospedante?",
        options = {
            "A. Mediante micelio durmiente en el embrion de la semilla que crece sistemicamente.",
            "B. Por invasion de raices por aperos de labranza.",
            "C. Por picadura de insectos chupadores.",
            "D. Por acumulacion de agua de lluvia."
        },
        correct = 1,
        explanation = "Viaja latente dentro del embrion de la semilla y crece junto con la planta."
    },
    {
        category = "Manejo Cultural",
        question = "¿Por que destruir rastrojos es efectivo contra royas y carbones?",
        options = {
            "A. Reduce el inoculo primario que iniciaria la epidemia en la siguiente campana.",
            "B. Esteriliza el suelo por calor.",
            "C. Evita malezas de gramineas.",
            "D. Mejora la aireacion del subsuelo."
        },
        correct = 1,
        explanation = "Elimina las esporas de resistencia almacenadas en los residuos vegetales."
    },
    {
        category = "Dinamica de Infeccion",
        question = "¿Que hace la zoospora de mildiu tras perder flagelos en agua libre?",
        options = {
            "A. Se encista, emite tubo germinativo y entra por el estoma mas cercano.",
            "B. Se transforma en conidia asexual.",
            "C. Se adhiere y es absorbida por el xilema.",
            "D. Muere por lisis osmotica."
        },
        correct = 1,
        explanation = "Nada hacia el estoma, se encista y penetra por la cavidad subestomatica."
    }
}

local function drawHeader(score, total, current)
    term.clear()
    term.setCursorPos(1, 1)
    if term.isColor and term.isColor() then
        term.setBackgroundColor(colors.gray)
        term.setTextColor(colors.yellow)
    end
    print(" === FITOPATOLOGIA AGRICOLA - EVALUADOR CC:T ===")
    if term.isColor and term.isColor() then
        term.setBackgroundColor(colors.black)
        term.setTextColor(colors.white)
    end
    print("Pregunta " .. current .. " de " .. total .. " | Puntaje actual: " .. score)
    print("--------------------------------------------------")
end

local function runQuiz()
    local score = 0
    local answers = {}

    for i, q in ipairs(questions) do
        drawHeader(score, #questions, i)
        
        if term.isColor and term.isColor() then
            term.setTextColor(colors.cyan)
        end
        print("[" .. q.category .. "]")
        
        if term.isColor and term.isColor() then
            term.setTextColor(colors.white)
        end
        print(q.question)
        print("")

        for _, opt in ipairs(q.options) do
            print(opt)
        end
        print("")

        local selected = nil
        while not selected do
            io.write("Elige tu respuesta (A, B, C, D): ")
            local input = string.upper(read())
            if input == "A" then selected = 1
            elseif input == "B" then selected = 2
            elseif input == "C" then selected = 3
            elseif input == "D" then selected = 4
            else
                print("Opcion invalida. Intenta nuevamente.")
            end
        end

        table.insert(answers, selected)

        if selected == q.correct then
            score = score + 1
            if term.isColor and term.isColor() then term.setTextColor(colors.green) end
            print("\n>> CORRECTO!")
        else
            if term.isColor and term.isColor() then term.setTextColor(colors.red) end
            print("\n>> INCORRECTO. La respuesta correcta era la opcion " .. string.char(64 + q.correct))
        end

        if term.isColor and term.isColor() then term.setTextColor(colors.lightGray) end
        print("Explicacion: " .. q.explanation)
        
        print("\nPresiona Enter para continuar...")
        read()
    end

    -- Pantalla final de resultados
    term.clear()
    term.setCursorPos(1, 1)
    print("==================================================")
    print("             RESULTADOS DEL EXAMEN                ")
    print("==================================================")
    
    local porcentaje = math.floor((score / #questions) * 100)
    print("Puntaje Obtenido: " .. score .. " / " .. #questions .. " (" .. porcentaje .. "%)")

    if porcentaje >= 70 then
        if term.isColor and term.isColor() then term.setTextColor(colors.green) end
        print("Estado: APROBADO - Excelente dominio fitopatologico.")
    else
        if term.isColor and term.isColor() then term.setTextColor(colors.red) end
        print("Estado: REPROBADO - Se requiere repasar conceptos.")
    end

    if term.isColor and term.isColor() then term.setTextColor(colors.white) end
    print("==================================================")
end

runQuiz()