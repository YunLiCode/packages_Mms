.class public Lcom/android/mms/ui/WapPushAlertDialog;
.super Landroid/app/Activity;
.source "WapPushAlertDialog.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/WapPushAlertDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/WapPushAlertDialog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/mms/ui/WapPushAlertDialog;->mLink:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/WapPushAlertDialog;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/android/mms/ui/WapPushAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Address"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WapPushAlertDialog;->mAddress:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/android/mms/ui/WapPushAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Link"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WapPushAlertDialog;->mLink:Ljava/lang/String;

    .line 24
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/WapPushAlertDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01a9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/WapPushAlertDialog;->mLink:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/WapPushAlertDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b007d

    new-instance v3, Lcom/android/mms/ui/WapPushAlertDialog$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/WapPushAlertDialog$2;-><init>(Lcom/android/mms/ui/WapPushAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b007e

    new-instance v3, Lcom/android/mms/ui/WapPushAlertDialog$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/WapPushAlertDialog$1;-><init>(Lcom/android/mms/ui/WapPushAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 40
    .local v0, "mAlertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/mms/ui/WapPushAlertDialog$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WapPushAlertDialog$3;-><init>(Lcom/android/mms/ui/WapPushAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 47
    return-void
.end method
