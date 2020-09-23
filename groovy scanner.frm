VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Groovy Boxes"
   ClientHeight    =   7110
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8340
   LinkTopic       =   "Form1"
   ScaleHeight     =   7110
   ScaleWidth      =   8340
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Height          =   4695
      Left            =   120
      ScaleHeight     =   4635
      ScaleWidth      =   7395
      TabIndex        =   0
      Top             =   240
      Width           =   7455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Picture1.Left = 100
    Picture1.Top = 100
    Picture1.Width = Screen.Width - 500
    Picture1.Height = Screen.Height - 1500
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
line_num = 10            'Amount of boxes per side

Picture1.Cls
Rem Draws the center line
Picture1.Line (X, 0)-(X, Picture1.Height)
Picture1.Line (0, Y)-(Picture1.Width, Y)

Rem Does the right side
thestep = (Picture1.Width - X) / line_num
For lop = 1 To line_num
    Picture1.Line (X + (lop * thestep), 0)-(X + (lop * thestep), Picture1.Height)
Next lop

Rem Does the left side
thestep = X / line_num
For lop = 1 To line_num
    Picture1.Line (lop * thestep, 0)-(lop * thestep, Picture1.Height)
Next lop

Rem Does the top part
thestep = Y / line_num
For lop = 1 To line_num
    Picture1.Line (0, lop * thestep)-(Picture1.Width, lop * thestep)
Next lop
        
Rem Does the   Bottom part
thestep = (Picture1.Height - Y) / line_num
For lop = 1 To line_num
    Picture1.Line (0, Y + (lop * thestep))-(Picture1.Width, Y + (lop * thestep))
Next lop

End Sub
