.class Lcom/android/mms/transaction/TransactionService$2$1;
.super Ljava/lang/Thread;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/transaction/TransactionService$2;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService$2;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$2$1;->this$1:Lcom/android/mms/transaction/TransactionService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/android/mms/MmsConfig;->restoreDataSubscription()Z

    move-result v0

    .line 247
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$2$1;->this$1:Lcom/android/mms/transaction/TransactionService$2;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$2$1;->this$1:Lcom/android/mms/transaction/TransactionService$2;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$2;->removeMessages(I)V

    .line 251
    invoke-static {}, Lcom/android/mms/MmsConfig;->clearDefaultDataSubscription()V

    .line 252
    return-void
.end method
