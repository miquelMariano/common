
APP_ENVIRONMENT=$(cat /etc/APP_ENVIRONMENT)

# Los colores tienen que ir entre \[ \] para que no ocurran cosas raras!
case "$APP_ENVIRONMENT" in
        LIVE)
        export PS1="\[\033[01;41m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        NCORA)
        export PS1="\[\033[01;34m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        DES)
        export PS1="\[\033[01;32m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        TEST)
        export PS1="\[\033[01;36m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        DWEB)
        export PS1="\[\033[01;32m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        INT)
        export PS1="\[\033[01;33m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        PRE)
        export PS1="\[\033[01;33m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        IC)
        export PS1="\[\033[01;42m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        oSTAGE)
        export PS1="\[\033[01;41m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        oTEST)
        export PS1="\[\033[01;41m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        iSTAGE)
        export PS1="\[\033[01;41m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        iTEST)
        export PS1="\[\033[01;41m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        TAB)
        export PS1="\[\033[01;36m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
        SHARED)
        export PS1="\[\033[01;35m\][${APP_ENVIRONMENT}]\[\033[00m\] [\u@\h \w]\\$ "
        ;;
    *)
        export PS1="[${APP_ENVIRONMENT} ] [\u@\h \w]\\$ "
esac

