﻿(Dialog StatorSheet
    (Components
        (SubLayout Content)
        (Separator CommitSeparator)
        (PushButton CommitOK)
        (PushButton CommitCancel)
    )
    (Resources
        (CommitSeparator.ResourceHints "Template:OKCancelDialog.CommitSeparator")
        (CommitOK.Label "OK")
        (CommitOK.TopOffset 10)
        (CommitOK.BottomOffset 10)
        (CommitOK.LeftOffset 40)
        (CommitOK.RightOffset 0)
        (CommitOK.ResourceHints "Template:OKCancelDialog.CommitOK")
        (CommitCancel.Label "Cancel")
        (CommitCancel.TopOffset 10)
        (CommitCancel.BottomOffset 10)
        (CommitCancel.LeftOffset 8)
        (CommitCancel.RightOffset 10)
        (CommitCancel.ResourceHints "Template:OKCancelDialog.CommitCancel")
        (.TopOffset 0)
        (.BottomOffset 0)
        (.LeftOffset 0)
        (.RightOffset 0)
        (.DefaultButton "CommitOK")
        (.ResourceHints "Template:OKCancelDialog" "Guidelines:Creo4-Dialog" "GuidelinesVersion:1" "Version:Creo4" "@Subgrid0x2.Template:OKCancelDialog.CommitBar")
        (.Accelerator "Esc")
        (.Label "Лист статора")
        (.AttachLeft True)
        (.Columns 35)
        (.CloseButton 0)
        (.Layout
            (Grid
                (Rows 1 0 0)
                (Cols 1)
                Content CommitSeparator
                (Grid
                    (Rows 1)
                    (Cols 1 0 0)
                    (Pos 1 2)
                    CommitOK
                    (Pos 1 3)
                    CommitCancel
                )
            )
        )
    )
)
(Layout Content
    (Components
        (SubLayout Documents)
        (SubLayout G_Screws)
        (Separator Separator1)
        (Label L_Round)
        (CheckButton CB_Round)
    )
    (Resources
        (Separator1.TopOffset 7)
        (Separator1.BottomOffset 7)
        (L_Round.Label "Добавить скругления в пазах под катушки (для dxf)")
        (L_Round.AttachLeft True)
        (L_Round.TopOffset 6)
        (L_Round.BottomOffset 0)
        (L_Round.LeftOffset 0)
        (L_Round.RightOffset 4)
        (CB_Round.AttachLeft True)
        (CB_Round.TopOffset 6)
        (CB_Round.BottomOffset 0)
        (CB_Round.LeftOffset 3)
        (CB_Round.RightOffset 0)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.TopOffset 16)
        (.BottomOffset 16)
        (.LeftOffset 10)
        (.RightOffset 10)
        (.ResourceHints "Template:OKCancelDialog.Content" "UserOverrideCols:11" "UserOverrideRows:0100")
        (.AttachBottom True)
        (.Layout
            (Grid
                (Rows 0 1 0 0)
                (Cols 0 1)
                (Size 1 2)
                Documents
                (Size 1 2)
                G_Screws
                (Size 1 2)
                Separator1 L_Round CB_Round
            )
        )
    )
)
(Layout Documents
    (Components
        (Label L_Documents)
        (Label L_Note)
        (PushButton PB_Note)
        (InputPanel IP_Note)
        (OptionMenu OM_Note)
        (Label L_STO)
        (PushButton PB_STO)
        (InputPanel IP_STO)
        (OptionMenu OM_STO)
        (Label L_Results)
        (PushButton PB_Results)
        (InputPanel IP_Results)
        (OptionMenu OM_Results)
    )
    (Resources
        (L_Documents.Label "Документы")
        (L_Documents.AttachLeft True)
        (L_Documents.ResourceHints "Template:Group.GroupHeader")
        (L_Documents.TopOffset 0)
        (L_Documents.BottomOffset 10)
        (L_Documents.LeftOffset 0)
        (L_Documents.RightOffset 0)
        (L_Documents.FontStyle 8)
        (L_Note.Label "Выберите записку расчетную и обмоточную")
        (L_Note.AttachLeft True)
        (L_Note.TopOffset 0)
        (L_Note.BottomOffset 2)
        (L_Note.LeftOffset 10)
        (L_Note.RightOffset 0)
        (PB_Note.Label "Искать обозначение по части строки:")
        (PB_Note.ButtonStyle 2)
        (PB_Note.AttachLeft True)
        (PB_Note.ResourceHints "UserOverrideAttrs:ButtonStyle")
        (PB_Note.TopOffset 1)
        (PB_Note.BottomOffset 3)
        (PB_Note.LeftOffset 10)
        (PB_Note.RightOffset 4)
        (IP_Note.TopOffset 1)
        (IP_Note.BottomOffset 3)
        (IP_Note.LeftOffset 3)
        (IP_Note.RightOffset 0)
        (IP_Note.InputType 0)
        (OM_Note.TopOffset 3)
        (OM_Note.BottomOffset 2)
        (OM_Note.LeftOffset 10)
        (OM_Note.RightOffset 0)
        (OM_Note.InputType 0)
        (L_STO.Label "Выберите стандарт организации")
        (L_STO.AttachLeft True)
        (L_STO.TopOffset 1)
        (L_STO.BottomOffset 2)
        (L_STO.LeftOffset 10)
        (L_STO.RightOffset 0)
        (PB_STO.Label "Искать обозначение по части строки:")
        (PB_STO.ButtonStyle 2)
        (PB_STO.AttachLeft True)
        (PB_STO.ResourceHints "UserOverrideAttrs:ButtonStyle")
        (PB_STO.TopOffset 1)
        (PB_STO.BottomOffset 3)
        (PB_STO.LeftOffset 10)
        (PB_STO.RightOffset 4)
        (IP_STO.TopOffset 1)
        (IP_STO.BottomOffset 3)
        (IP_STO.LeftOffset 3)
        (IP_STO.RightOffset 0)
        (IP_STO.InputType 0)
        (OM_STO.TopOffset 3)
        (OM_STO.BottomOffset 2)
        (OM_STO.LeftOffset 10)
        (OM_STO.RightOffset 0)
        (OM_STO.InputType 0)
        (L_Results.Label "Выберите результаты механического расчета")
        (L_Results.AttachLeft True)
        (L_Results.TopOffset 1)
        (L_Results.BottomOffset 2)
        (L_Results.LeftOffset 10)
        (L_Results.RightOffset 0)
        (PB_Results.Label "Искать обозначение по части строки:")
        (PB_Results.ButtonStyle 2)
        (PB_Results.AttachLeft True)
        (PB_Results.ResourceHints "UserOverrideAttrs:ButtonStyle")
        (PB_Results.TopOffset 1)
        (PB_Results.BottomOffset 3)
        (PB_Results.LeftOffset 10)
        (PB_Results.RightOffset 4)
        (IP_Results.TopOffset 1)
        (IP_Results.BottomOffset 3)
        (IP_Results.LeftOffset 3)
        (IP_Results.RightOffset 0)
        (IP_Results.InputType 0)
        (OM_Results.TopOffset 3)
        (OM_Results.BottomOffset 0)
        (OM_Results.LeftOffset 10)
        (OM_Results.RightOffset 0)
        (OM_Results.InputType 0)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.TopOffset 0)
        (.BottomOffset 7)
        (.LeftOffset 0)
        (.RightOffset 0)
        (.ResourceHints "Template:Group" "@Subgrid0x1.Template:Group.GroupContent")
        (.AttachBottom True)
        (.Layout
            (Grid
                (Rows 0 1)
                (Cols 1)
                L_Documents
                (Grid
                    (Rows 0 0 0 0 0 0 0 0 0)
                    (Cols 0 1)
                    (Size 1 2)
                    L_Note PB_Note IP_Note
                    (Size 1 2)
                    OM_Note
                    (Size 1 2)
                    L_STO PB_STO IP_STO
                    (Size 1 2)
                    OM_STO
                    (Size 1 2)
                    L_Results PB_Results IP_Results
                    (Size 1 2)
                    OM_Results
                )
            )
        )
    )
)
(Layout G_Screws
    (Components
        (Label L_Screws)
        (Label L_Screw)
        (OptionMenu OM_Screws)
        (Tab T_Screws LO_Screw_1 LO_Screw_2 LO_Screw_3and4 LO_Screw_5 LO_Screw_6 LO_Screw_7)
    )
    (Resources
        (L_Screws.Label "Крепеж")
        (L_Screws.AttachLeft True)
        (L_Screws.ResourceHints "Template:Group.GroupHeader")
        (L_Screws.TopOffset 0)
        (L_Screws.BottomOffset 10)
        (L_Screws.LeftOffset 0)
        (L_Screws.RightOffset 0)
        (L_Screws.FontStyle 8)
        (L_Screw.Label "Выберите тип крепежа")
        (L_Screw.AttachLeft True)
        (L_Screw.TopOffset 0)
        (L_Screw.BottomOffset 2)
        (L_Screw.LeftOffset 10)
        (L_Screw.RightOffset 0)
        (OM_Screws.Names "1" "2" "3" "5" "6" "7")
        (OM_Screws.Labels "Пазы под шпильки с обниженным базовым радиусом" "Пазы под шпильки с частично обниженным базовым радиусом" "Пазы под шпильки без обнижения базового радиуса" "Пазы под ребра" "Лыски под ребра" "Пазы под ласточкин хвост")
        (OM_Screws.TopOffset 1)
        (OM_Screws.BottomOffset 2)
        (OM_Screws.LeftOffset 10)
        (OM_Screws.RightOffset 0)
        (T_Screws.TopOffset 1)
        (T_Screws.BottomOffset 0)
        (T_Screws.LeftOffset 10)
        (T_Screws.RightOffset 0)
        (.AttachLeft True)
        (.AttachRight True)
        (.AttachTop True)
        (.TopOffset 6)
        (.BottomOffset 7)
        (.LeftOffset 0)
        (.RightOffset 0)
        (.ResourceHints "Template:Group" "@Subgrid0x1.Template:Group.GroupContent")
        (.AttachBottom True)
        (.Layout
            (Grid
                (Rows 0 1)
                (Cols 1)
                L_Screws
                (Grid
                    (Rows 0 0 1)
                    (Cols 1)
                    L_Screw OM_Screws T_Screws
                )
            )
        )
    )
)
(Layout LO_Screw_1
    (Components
        (Label L_S1_Image)
    )
    (Resources
        (L_S1_Image.TopOffset 0)
        (L_S1_Image.BottomOffset 0)
        (L_S1_Image.LeftOffset 0)
        (L_S1_Image.RightOffset 0)
        (L_S1_Image.ResourceHints "UserOverrideAttrs:AttachLeft")
        (.Label "Крепеж 1")
        (.ResourceHints "UserOverrideCols:1")
        (.Layout
            (Grid
                (Rows 0)
                (Cols 1)
                L_S1_Image
            )
        )
    )
)
(Layout LO_Screw_2
    (Components
        (Label L_S2_Image)
    )
    (Resources
        (L_S2_Image.TopOffset 0)
        (L_S2_Image.BottomOffset 0)
        (L_S2_Image.LeftOffset 0)
        (L_S2_Image.RightOffset 0)
        (L_S2_Image.ResourceHints "UserOverrideAttrs:AttachLeft")
        (.Label "Крепеж 2")
        (.ResourceHints "UserOverrideCols:1")
        (.Layout
            (Grid
                (Rows 0)
                (Cols 1)
                L_S2_Image
            )
        )
    )
)
(Layout LO_Screw_3and4
    (Components
        (Label L_S34_Screw_4)
        (CheckButton CB_S34_Screw_4)
        (Tab T_S34_Images LO_S34_Image_1 LO_S34_Image_2)
    )
    (Resources
        (L_S34_Screw_4.Label "Добавить открытые пазы под шпильки")
        (L_S34_Screw_4.ResourceHints "UserOverrideAttrs:AttachLeft,TopOffset,BottomOffset,LeftOffset,RightOffset")
        (L_S34_Screw_4.Alignment 0)
        (CB_S34_Screw_4.LeftOffset 10)
        (CB_S34_Screw_4.ResourceHints "UserOverrideAttrs:LeftOffset,AttachLeft,ButtonStyle,AttachRight,TopOffset,BottomOffset,RightOffset")
        (CB_S34_Screw_4.AttachLeft True)
        (T_S34_Images.TopOffset 0)
        (T_S34_Images.BottomOffset 0)
        (T_S34_Images.LeftOffset 0)
        (T_S34_Images.RightOffset 0)
        (.Label "Крепежи 3 и 4")
        (.ResourceHints "UserOverrideCols:1" "UserOverrideRows:11" "@Subgrid0x1.UserOverrideRows:1" "@Subgrid0x1.UserOverrideCols:11")
        (.Layout
            (Grid
                (Rows 1 1)
                (Cols 1)
                T_S34_Images
                (Grid
                    (Rows 0)
                    (Cols 0 0)
                    L_S34_Screw_4 CB_S34_Screw_4
                )
            )
        )
    )
)
(Layout LO_S34_Image_1
    (Components
        (Label L_S34_Image_1)
    )
    (Resources
        (L_S34_Image_1.TopOffset 0)
        (L_S34_Image_1.BottomOffset 0)
        (L_S34_Image_1.LeftOffset 0)
        (L_S34_Image_1.RightOffset 0)
        (L_S34_Image_1.ResourceHints "UserOverrideAttrs:AttachLeft")
        (.ResourceHints "UserOverrideCols:1")
        (.Layout
            (Grid
                (Rows 0)
                (Cols 1)
                L_S34_Image_1
            )
        )
    )
)
(Layout LO_S34_Image_2
    (Components
        (Label L_S34_Image_2)
    )
    (Resources
        (L_S34_Image_2.TopOffset 0)
        (L_S34_Image_2.BottomOffset 0)
        (L_S34_Image_2.LeftOffset 0)
        (L_S34_Image_2.RightOffset 0)
        (L_S34_Image_2.ResourceHints "UserOverrideAttrs:AttachLeft")
        (.ResourceHints "UserOverrideCols:1")
        (.Layout
            (Grid
                (Rows 0)
                (Cols 1)
                L_S34_Image_2
            )
        )
    )
)
(Layout LO_Screw_5
    (Components
        (Label L_S5_Image)
    )
    (Resources
        (L_S5_Image.TopOffset 0)
        (L_S5_Image.BottomOffset 0)
        (L_S5_Image.LeftOffset 0)
        (L_S5_Image.RightOffset 0)
        (L_S5_Image.ResourceHints "UserOverrideAttrs:AttachLeft")
        (.Label "Крепеж 5")
        (.ResourceHints "UserOverrideCols:1" "UserOverrideRows:0111")
        (.Layout
            (Grid
                (Rows 0 0 0 0)
                (Cols 1)
                (Size 4 1)
                L_S5_Image
            )
        )
    )
)
(Layout LO_Screw_6
    (Components
        (Label L_S6_Image)
    )
    (Resources
        (L_S6_Image.TopOffset 0)
        (L_S6_Image.BottomOffset 0)
        (L_S6_Image.LeftOffset 0)
        (L_S6_Image.RightOffset 0)
        (L_S6_Image.ResourceHints "UserOverrideAttrs:AttachLeft")
        (.Label "Крепеж 6")
        (.ResourceHints "UserOverrideCols:1" "UserOverrideRows:011")
        (.Layout
            (Grid
                (Rows 0 0 0)
                (Cols 1)
                (Size 3 1)
                L_S6_Image
            )
        )
    )
)
(Layout LO_Screw_7
    (Components
        (Label L_S7_Image)
    )
    (Resources
        (L_S7_Image.TopOffset 0)
        (L_S7_Image.BottomOffset 0)
        (L_S7_Image.LeftOffset 0)
        (L_S7_Image.RightOffset 0)
        (L_S7_Image.ResourceHints "UserOverrideAttrs:AttachLeft")
        (.Label "Крепеж 7")
        (.ResourceHints "UserOverrideCols:1" "UserOverrideRows:0111")
        (.Layout
            (Grid
                (Rows 0 0 0 0)
                (Cols 1)
                (Size 4 1)
                L_S7_Image
            )
        )
    )
)
