.class Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p2, "x1"    # Lcom/android/mms/transaction/TransactionService$1;

    .prologue
    .line 1571
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    .line 1574
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1575
    .local v0, "action":Ljava/lang/String;
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1576
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_0
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1643
    :cond_1
    :goto_0
    return-void

    .line 1583
    :cond_2
    const-string v4, "noConnectivity"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1586
    .local v2, "noConnectivity":Z
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1595
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1596
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle ConnectivityBroadcastReceiver.onReceive(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v7, :cond_6

    .line 1602
    :cond_4
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1603
    const-string v4, "TransactionService"

    const-string v5, "   type is not TYPE_MOBILE_MMS, bail"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_5
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1620
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v4

    const/4 v5, 0x5

    const-wide/32 v6, 0x124f8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1625
    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1626
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1627
    const-string v4, "TransactionService"

    const-string v5, "   TYPE_MOBILE_MMS not connected, bail"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1632
    :cond_7
    new-instance v3, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1636
    .local v3, "settings":Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1637
    const-string v4, "TransactionService"

    const-string v5, "   empty MMSC url, bail"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1641
    :cond_8
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)V

    .line 1642
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0
.end method
