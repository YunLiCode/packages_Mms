.class public Lcom/android/mms/ui/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private final mNumberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    .param p4, "number"    # I
    .param p5, "rangeMin"    # I
    .param p6, "rangeMax"    # I
    .param p7, "title"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 79
    iput-object p3, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 81
    invoke-virtual {p0, p7}, Lcom/android/mms/ui/NumberPickerDialog;->setTitle(I)V

    .line 83
    const/4 v2, -0x1

    const v4, 0x7f0b007f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 84
    const/4 v4, -0x2

    const v2, 0x7f0b007e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/mms/ui/NumberPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04001e

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NumberPickerDialog;->setView(Landroid/view/View;)V

    .line 91
    const v2, 0x7f0a007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 94
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 95
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 96
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 97
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 99
    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;
    .param p3, "number"    # I
    .param p4, "rangeMin"    # I
    .param p5, "rangeMax"    # I
    .param p6, "title"    # I

    .prologue
    .line 62
    const/4 v2, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    .line 63
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/NumberPickerDialog;->mCallback:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "number":I
    iget-object v1, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 122
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    return-object v0
.end method
