.class Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SelectMmsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMmsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMmsSubscription;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SelectMmsSubscription;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SelectMmsSubscription;Lcom/android/mms/ui/SelectMmsSubscription$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;
    .param p2, "x1"    # Lcom/android/mms/ui/SelectMmsSubscription$1;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/ui/SelectMmsSubscription;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    const-string v3, "SelectMmsSubscription"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v3, "noConnectivity"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 305
    .local v2, "noConnectivity":Z
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 308
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const-string v3, "SelectMmsSubscription"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle ConnectivityBroadcastReceiver.onReceive(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-nez v1, :cond_2

    .line 319
    const-string v3, "SelectMmsSubscription"

    const-string v4, "   type is not TYPE_MOBILE, bail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 324
    const-string v3, "SelectMmsSubscription"

    const-string v4, "   TYPE_MOBILE not connected, bail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_3
    const-string v3, "SelectMmsSubscription"

    const-string v4, "TYPE_MOBILE is available and connected."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # getter for: Lcom/android/mms/ui/SelectMmsSubscription;->flagOkToStartTransactionService:Z
    invoke-static {v3}, Lcom/android/mms/ui/SelectMmsSubscription;->access$400(Lcom/android/mms/ui/SelectMmsSubscription;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # invokes: Lcom/android/mms/ui/SelectMmsSubscription;->triggerTransactionService()V
    invoke-static {v3}, Lcom/android/mms/ui/SelectMmsSubscription;->access$300(Lcom/android/mms/ui/SelectMmsSubscription;)V

    .line 333
    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    # setter for: Lcom/android/mms/ui/SelectMmsSubscription;->flagOkToStartTransactionService:Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/SelectMmsSubscription;->access$402(Lcom/android/mms/ui/SelectMmsSubscription;Z)Z

    .line 335
    iget-object v3, p0, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-virtual {v3}, Lcom/android/mms/ui/SelectMmsSubscription;->stopSelf()V

    goto :goto_0
.end method
