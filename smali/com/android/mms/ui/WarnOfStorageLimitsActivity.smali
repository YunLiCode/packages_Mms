.class public Lcom/android/mms/ui/WarnOfStorageLimitsActivity;
.super Landroid/app/Activity;
.source "WarnOfStorageLimitsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->finish()V

    .line 90
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->finish()V

    .line 98
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 77
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->finish()V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v1, 0x10302f6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->setTheme(I)V

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 61
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 65
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0b0129

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 66
    const v1, 0x7f0b012a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 67
    const v1, 0x7f0b012b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 68
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->setupAlert()V

    .line 70
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 110
    return-void
.end method
