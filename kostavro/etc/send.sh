#!/usr/bin/python
import smtplib

SMTP_SERVER = 'smtp.gmail.com'
SMTP_PORT = 587
GMAIL_USERNAME = 'NAME@gmail.com'
GMAIL_PASSWORD = 'PASSWORD' #CAUTION: This is stored in plain text!

recipient = 'NAME@gmail.com'
subject = 'Motion Detected'
emailText = 'Motion has been detected. You may view the stream here: http://STREAM . Images are being uploaded to your dropbox: DROPLINK'

emailText = "" + emailText + ""

headers = ["From: " + GMAIL_USERNAME,
           "Subject: " + subject,
           "To: " + recipient,
           "MIME-Version: 1.0",
           "Content-Type: text/html"]
headers = "\r\n".join(headers)

session = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)

session.ehlo()
session.starttls()
session.ehlo

session.login(GMAIL_USERNAME, GMAIL_PASSWORD)

session.sendmail(GMAIL_USERNAME, recipient, headers + "\r\n\r\n" + emailText)
session.quit()
