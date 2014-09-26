.class Lcom/android/mms/ui/NewProgressDialog;
.super Landroid/app/ProgressDialog;
.source "MessageUtils.java"


# instance fields
.field private isDismiss:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1929
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NewProgressDialog;->isDismiss:Z

    .line 1930
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/android/mms/ui/NewProgressDialog;->isDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1934
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1936
    :cond_0
    return-void
.end method

.method public declared-synchronized isDismiss()Z
    .locals 1

    .prologue
    .line 1943
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/NewProgressDialog;->isDismiss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDismiss(Z)V
    .locals 1
    .param p1, "isDismiss"    # Z

    .prologue
    .line 1939
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/ui/NewProgressDialog;->isDismiss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    monitor-exit p0

    return-void

    .line 1939
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
