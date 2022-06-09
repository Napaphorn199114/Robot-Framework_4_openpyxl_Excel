*** Settings ***
Library    String
Library    openpyxl
Library    BuiltIn

*** Variables ***
${excel}    Excel_openpyxl.xlsx

*** Test Cases ***
Test Load Data Excel
    ${wb}    Load Workbook    ${CURDIR}/${excel}
    ${ws}    Set Variable    ${wb.get_sheet_by_name('Sheet1')}     #get sheet ใส่ชื่อ sheet
    ${cell}    Set Variable    ${ws.cell(2,1).value}               # ระบุ row column  ที่ต้องการให้แสดง
    ${body}    Fetch From Right    ${cell}    {}
    Log To Console    \n\n${body}\n