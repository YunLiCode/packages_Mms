.class final Lcom/android/mms/transaction/MessagingNotification$5;
.super Landroid/os/Handler;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1454
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1457
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1458
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1459
    .local v1, "result":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 1460
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1461
    const/16 v2, 0x315

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1466
    :goto_0
    return-void

    .line 1464
    :cond_0
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method
