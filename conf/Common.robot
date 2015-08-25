*** Variables ***
${PROTOCOL}       http://
${HOST}           blackbox28.clarabridge.net
${PORT}           80
${CMP_LOGIN_URL}    ${PROTOCOL}${HOST}:${PORT}/cmp/login
${ADMIN_USER}     admin
${ADMIN_PASSWORD}    admin
${WEB_BROWSER}    firefox
${DB_API_MODULE_NAME}    psycopg2
${DB_CONNECT_STRING}    database='postgres', user='postgres', password='Clarabr1dge', host='10.80.253.162', port=5432
${SYSTEM_SCHEMA}    cbss_634
${DB_TIMEOUT}     900
${DB_RETRY_INTERVAL}    1
${API_TIMEOUT}    900
@{CALENDARS}      Standard Calendar    European Calendar    NRF Calendar
@{LANGUAGES}      auto    @u    nl    en    fr    de    it
...               pt    ru    es
${DEFAULT_SUBMIT_DATA_HEADER_PATH}    ${EMPTY}
${DEFAULT_SUBMIT_DATA_PATH}    ${EMPTY}
${GLOBAL_RETRY_INTERVAL}    1
${SELENIUM_SPEED}    0.2
${IMPLICIT_WAIT}    15
${SELENIUM_DEFAULT_TIMEOUT}    30
${STALE_ELEMENT_REFERENCE_EXCEPTION_ACTION_IN_FOR_LOOP_TRIES_COUNT}    2
${CPS_HOST}       10.9.210.168
${CPS_PORT}       80