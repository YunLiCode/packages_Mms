.class public Lcom/android/mms/ui/SelectMmsSubscription;
.super Landroid/app/Service;
.source "SelectMmsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMmsSubscription$1;,
        Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;
    }
.end annotation


# instance fields
.field private flagOkToStartTransactionService:Z

.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;

.field private requestedSub:I

.field private startUpIntent:Landroid/content/Intent;

.field private switchSubscriptionTask:Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;

.field private triggerSwitchOnly:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I

    .line 53
    iput v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->triggerSwitchOnly:I

    .line 56
    iput-boolean v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->flagOkToStartTransactionService:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SelectMmsSubscription;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SelectMmsSubscription;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->triggerSwitchOnly:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SelectMmsSubscription;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMmsSubscription;->triggerTransactionService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SelectMmsSubscription;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->flagOkToStartTransactionService:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SelectMmsSubscription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/mms/ui/SelectMmsSubscription;->flagOkToStartTransactionService:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SelectMmsSubscription;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMmsSubscription;->removeStatusBarNotification()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SelectMmsSubscription;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SelectMmsSubscription;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SelectMmsSubscription;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMmsSubscription;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 3

    .prologue
    .line 272
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMmsSubscription;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 274
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 276
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    goto :goto_0
.end method

.method private removeStatusBarNotification()V
    .locals 4

    .prologue
    .line 342
    const-string v2, "SelectMmsSubscription"

    const-string v3, "removeStatusBarNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v1, "notification"

    .line 344
    .local v1, "ns":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 346
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    iget v2, p0, Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 348
    return-void
.end method

.method private triggerTransactionService()V
    .locals 3

    .prologue
    .line 281
    const-string v0, "SelectMmsSubscription"

    const-string v1, "triggerTransactionService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 290
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 362
    const-string v0, "SelectMmsSubscription"

    const-string v1, "Create()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMmsSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mContext:Landroid/content/Context;

    .line 365
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "SelectMmsSubscription"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mReceiver:Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "SelectMmsSubscription"

    const-string v1, "onDestroy(): UnregisterReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mReceiver:Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SelectMmsSubscription;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 397
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 374
    iput-object p1, p0, Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;

    const-string v1, "sub_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->startUpIntent:Landroid/content/Intent;

    const-string v1, "TRIGGER_SWITCH_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->triggerSwitchOnly:I

    .line 379
    const-string v0, "SelectMmsSubscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "SelectMmsSubscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerSwitchOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SelectMmsSubscription;->triggerSwitchOnly:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;-><init>(Lcom/android/mms/ui/SelectMmsSubscription;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->switchSubscriptionTask:Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/SelectMmsSubscription;->switchSubscriptionTask:Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget v2, p0, Lcom/android/mms/ui/SelectMmsSubscription;->requestedSub:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectMmsSubscription$SwitchSubscriptionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    const/4 v0, 0x2

    return v0
.end method

.method registerForPdpUp()V
    .locals 3

    .prologue
    .line 351
    new-instance v1, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/ui/SelectMmsSubscription;Lcom/android/mms/ui/SelectMmsSubscription$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mReceiver:Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "SelectMmsSubscription"

    const-string v2, "registerReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/android/mms/ui/SelectMmsSubscription;->mReceiver:Lcom/android/mms/ui/SelectMmsSubscription$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SelectMmsSubscription;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    return-void
.end method
