.class Lcom/android/mms/ui/DeleteProgressDialogUtil;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1910
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1917
    new-instance v0, Lcom/android/mms/ui/NewProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1918
    .local v0, "dialog":Lcom/android/mms/ui/NewProgressDialog;
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewProgressDialog;->setCancelable(Z)V

    .line 1919
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewProgressDialog;->setProgressStyle(I)V

    .line 1920
    const v1, 0x7f0b01d0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1921
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewProgressDialog;->setMax(I)V

    .line 1922
    return-object v0
.end method
