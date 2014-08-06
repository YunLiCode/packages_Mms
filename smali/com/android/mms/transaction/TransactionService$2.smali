.class Lcom/android/mms/transaction/TransactionService$2;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 241
    const-string v0, "TransactionService"

    const-string v1, "switch back data sub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/android/mms/transaction/TransactionService$2$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$2$1;-><init>(Lcom/android/mms/transaction/TransactionService$2;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionService$2$1;->start()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService$2;->removeMessages(I)V

    .line 256
    invoke-static {}, Lcom/android/mms/MmsConfig;->needDataSwitchBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    const-string v0, "TransactionService"

    const-string v1, "switch back data failed. need switch it manually."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->clearDefaultDataSubscription()V

    goto :goto_0
.end method
