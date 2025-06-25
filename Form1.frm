VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "5"
   ClientHeight    =   12930
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10380
   LinkTopic       =   "Form1"
   ScaleHeight     =   12930
   ScaleWidth      =   10380
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   8160
      TabIndex        =   1
      Top             =   120
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   5535
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Top             =   7200
      Width           =   7935
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   615
      Left            =   8160
      TabIndex        =   2
      Top             =   840
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Open App.Path & "/NDS.TXT" For Output As #3

Open App.Path & "/NDS Game List.txt" For Input As #1
Do Until (EOF(1))

    Line Input #1, Phrase
    If Phrase = "" Then
        GoTo skip:
    End If

'2006 FIFA World Cup//Soccer//Nintendo DS//E//Apr 25, 2006//Electronic Arts

mySplit = Split(Phrase, "//", 6)

Print #3, "I"


Text1.Text = Text1.Text & mySplit(0) & vbCrLf

Label1 = Label1 + 1

skip:
Loop

Close #1, #3

End Sub
