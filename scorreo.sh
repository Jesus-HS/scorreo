#bin/bash
clear

enviarcorreo(){
    clear
    echo 'Direccion de correo a suplantar'
    read remitente
    clear

    echo 'Remitente' $remitente
    echo 'Direccion de correo receptor'
    read receptor
    clear

    echo 'Remitente' $remitente
    echo 'Receptor' $receptor
    echo 'Asunto del correo'
    read asunto
    clear

    echo 'Remitente' $remitente
    echo 'Receptor' $receptor
    echo 'Asunto del correo' $asunto
    echo 'Mensaje'
    read mensaje
    clear

    echo 'Remitente' $remitente
    echo 'Receptor' $receptor
    echo 'Asunto del correo' $asunto
    echo 'Mensaje' $mensaje
    echo '¿Seguro de mandar el siguiente mensaje? (s/n)'
    read $seguro 
    case $seguro in
    s)
    curl --data "remitente=$receptor && asunto=$asunto && msj=$mensaje && desde=remitente" https://insessorial-halls.000webhostapp.com/send.php
    ;;
    n)
        clear
        menuInicial
        esac
}

menuInicial(){
    clear

    echo -e '\e[92Bienvenido '
    echo ''
    echo 'presione s Iniciar suplantación'
    read opcion
    case $opcion in
    s)
    enviarcorreo
    ;;
    esac
}

menuInicial