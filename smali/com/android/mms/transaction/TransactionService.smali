.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;,
        Lcom/android/mms/transaction/TransactionService$TxnRequest;
    }
.end annotation


# static fields
.field public static isNeedToCloseMobileData:Z

.field public static isNeedToSwitchSubscriptionOrWaitProcess:Z


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field public mDataSwitchHandler:Landroid/os/Handler;

.field private mMmsConnecvivityRetryCount:I

.field private final mNeedSwitchPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWorkingMmsUri:Ljava/lang/String;

.field private mWorkingTransactionType:I

.field private final txnRequestsMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/TransactionService$TxnRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mWorkingTransactionType:I

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/mms/transaction/TransactionService$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$2;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mDataSwitchHandler:Landroid/os/Handler;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->switchSubscriptionFor(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mWorkingTransactionType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mWorkingTransactionType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/transaction/TransactionService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/mms/transaction/TransactionService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->mmsConnectivityFailed()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 982
    return-void
.end method

.method private cancelDownloading(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "startId"    # I

    .prologue
    const/4 v6, 0x1

    .line 1539
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1542
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1544
    .local v1, "tempPending":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/transaction/Transaction;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/Transaction;

    .line 1546
    .local v3, "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    if-ne v4, v6, :cond_0

    move-object v0, v3

    .line 1547
    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    .line 1548
    .local v0, "retrieveTransaction":Lcom/android/mms/transaction/RetrieveTransaction;
    invoke-virtual {v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1549
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1553
    .end local v0    # "retrieveTransaction":Lcom/android/mms/transaction/RetrieveTransaction;
    .end local v3    # "transaction":Lcom/android/mms/transaction/Transaction;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1555
    .local v2, "tempProcessing":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/transaction/Transaction;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1556
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/Transaction;

    .line 1558
    .restart local v3    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    if-ne v4, v6, :cond_2

    move-object v0, v3

    .line 1559
    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    .line 1560
    .restart local v0    # "retrieveTransaction":Lcom/android/mms/transaction/RetrieveTransaction;
    invoke-virtual {v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1561
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1566
    .end local v0    # "retrieveTransaction":Lcom/android/mms/transaction/RetrieveTransaction;
    .end local v3    # "transaction":Lcom/android/mms/transaction/Transaction;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1567
    invoke-direct {p0, p2, v6}, Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V

    .line 1568
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 1569
    return-void
.end method

.method private declared-synchronized checkToSwitchOrWait(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1673
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1674
    :cond_0
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedSwitchPending size before add = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedSwitchPending isContains = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    :goto_0
    monitor-exit p0

    return-void

    .line 1678
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->switchSubscriptionFor(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1673
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 972
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 973
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 974
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    :cond_0
    monitor-exit p0

    return-void

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dealWithFailedMessage(Landroid/net/Uri;)V
    .locals 8
    .param p1, "mmsUri"    # Landroid/net/Uri;

    .prologue
    .line 762
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 763
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 765
    .local v6, "msgId":J
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method private getCurrentSubcription()I
    .locals 3

    .prologue
    .line 331
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 333
    .local v1, "tmgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const-string v2, "phone_msim"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    .line 336
    .local v0, "mtmgr":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    .line 339
    .end local v0    # "mtmgr":Landroid/telephony/MSimTelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPendingMessages(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 1693
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1694
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1695
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 1697
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1701
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time ASC, msg_id DESC"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSubIdFromDb(Landroid/net/Uri;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 311
    const/4 v7, 0x0

    .line 312
    .local v7, "subId":I
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .local v6, "c":Landroid/database/Cursor;
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz v6, :cond_1

    .line 317
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "sub_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 319
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId in db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 326
    .end local v7    # "subId":I
    .local v8, "subId":I
    :goto_0
    return v8

    .line 323
    .end local v8    # "subId":I
    .restart local v7    # "subId":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v7

    .line 326
    .end local v7    # "subId":I
    .restart local v8    # "subId":I
    goto :goto_0

    .line 323
    .end local v8    # "subId":I
    .restart local v7    # "subId":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getTransactionType(I)I
    .locals 3
    .param p1, "msgType"    # I

    .prologue
    .line 698
    sparse-switch p1, :sswitch_data_0

    .line 706
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 700
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 704
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isAirplaneMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 771
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 773
    .local v0, "isAirplaneMode":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 3

    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 694
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 4
    .param p0, "type"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 683
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 684
    if-ge p0, v3, :cond_1

    if-ltz p0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 684
    goto :goto_0

    .line 686
    :cond_2
    if-ge p0, v3, :cond_3

    if-gtz p0, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "txnBundle"    # Lcom/android/mms/transaction/TransactionBundle;
    .param p3, "noNetwork"    # Z

    .prologue
    .line 712
    if-eqz p3, :cond_0

    .line 713
    const-string v1, "TransactionService"

    const-string v2, "launchTransaction: no network error!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(IILandroid/net/Uri;)V

    .line 725
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 719
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 721
    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchTransaction: sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private mmsConnectivityFailed()V
    .locals 7

    .prologue
    .line 1707
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmsConnectivityFailed mPending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mProcessing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1709
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1710
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1711
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1713
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 1714
    const/4 v2, 0x0

    .line 1715
    invoke-virtual {v1, p0}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1716
    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1727
    :goto_1
    if-eqz v2, :cond_0

    .line 1728
    iget-object v5, v1, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 1729
    iget-object v5, v1, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 1730
    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    .line 1731
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1735
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1718
    :pswitch_0
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1721
    :pswitch_1
    move-object v0, v1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1724
    :pswitch_2
    move-object v0, v1

    check-cast v0, Lcom/android/mms/transaction/SendTransaction;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/transaction/SendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 1735
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1736
    return-void

    .line 1716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onNetworkUnavailable(IILandroid/net/Uri;)V
    .locals 10
    .param p1, "serviceId"    # I
    .param p2, "transactionType"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 728
    const-string v0, "Mms:transaction"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkUnavailable: sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 733
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "st"

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 736
    const/4 v6, -0x1

    .line 737
    .local v6, "toastType":I
    if-ne p2, v8, :cond_4

    .line 738
    const/4 v6, 0x2

    .line 748
    :cond_1
    :goto_0
    const/4 v0, -0x1

    if-eq v6, v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 751
    :cond_2
    invoke-direct {p0, p1, v7}, Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V

    .line 752
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 753
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v0, :cond_3

    .line 754
    const-string v0, "TransactionService"

    const-string v1, "CloseMobileData updateonNetworkUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 756
    sput-boolean v7, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 758
    :cond_3
    return-void

    .line 739
    :cond_4
    if-ne p2, v9, :cond_1

    .line 740
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 741
    invoke-direct {p0, p3}, Lcom/android/mms/transaction/TransactionService;->dealWithFailedMessage(Landroid/net/Uri;)V

    .line 742
    const/16 v6, 0x9

    goto :goto_0

    .line 745
    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 989
    :cond_0
    return-void
.end method

.method private removeNotification(I)V
    .locals 15

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 566
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification, startId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v12, p0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    monitor-enter v12

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;

    .line 570
    iget v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->serviceId:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 572
    iget v4, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->requestedSubId:I

    .line 573
    iget v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->requestedSubId:I

    if-ne v2, v8, :cond_2

    move v3, v9

    .line 574
    :goto_1
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v2, :cond_4

    .line 578
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getCurrentSubcription()I

    move-result v4

    .line 579
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserPreferDataSubscription()I

    move-result v3

    .line 580
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v3, v11

    .line 583
    :cond_1
    if-ne v3, v11, :cond_3

    move v2, v8

    :goto_2
    move v10, v3

    move v3, v4

    .line 587
    :goto_3
    if-eqz v2, :cond_6

    .line 588
    const-string v1, "TransactionService"

    const-string v2, "Notification cleanup not required since subId is -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    monitor-exit v12

    .line 648
    :goto_4
    return-void

    :cond_2
    move v3, v8

    .line 573
    goto :goto_1

    :cond_3
    move v2, v9

    .line 583
    goto :goto_2

    .line 585
    :cond_4
    iget v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->requestedSubId:I

    if-ne v2, v11, :cond_5

    move v2, v8

    :goto_5
    move v10, v3

    move v3, v4

    goto :goto_3

    :cond_5
    move v2, v9

    goto :goto_5

    .line 591
    :cond_6
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v2, :cond_9

    .line 592
    iget-boolean v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->isNoRetry:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    :cond_7
    move v2, v8

    .line 596
    :goto_6
    iget v1, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->anyRequestFailed:I

    if-ne v1, v8, :cond_a

    if-eqz v2, :cond_a

    .line 598
    const-string v1, "TransactionService"

    const-string v2, "Some transaction failed for this sub, notification not cleared."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    move v2, v9

    .line 592
    goto :goto_6

    :cond_9
    move v2, v8

    .line 594
    goto :goto_6

    .line 601
    :cond_a
    :try_start_1
    const-string v1, "notification"

    .line 602
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 604
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 605
    iget-object v14, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    :try_start_2
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNeedSwitchPending size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_7
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 608
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    move-object v7, v0

    .line 609
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNeedSwitchPending size after remove = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mNeedSwitchPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 611
    const-string v1, "uri"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 613
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 615
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 616
    :cond_b
    const-string v1, "TransactionService"

    const-string v2, "retrieve transcation has been deleted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 626
    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 620
    :cond_c
    :try_start_4
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 621
    iput-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 622
    const-string v2, "TransactionService"

    const-string v3, "Send Message EVENT_HANDLE_NEXT_NEED_SWITCH_PENDING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 626
    :cond_d
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 629
    :try_start_7
    const-string v1, "prompt"

    const-string v2, "mms.transaction"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v9

    .line 634
    :goto_8
    if-eqz v1, :cond_0

    .line 636
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS silent transaction finished for sub="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    const-string v2, "sub_id"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string v2, "TRIGGER_SWITCH_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 642
    monitor-exit v12

    goto/16 :goto_4

    .line 647
    :cond_e
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :cond_f
    move v1, v8

    goto :goto_8
.end method

.method private renewMmsConnectivity()V
    .locals 4

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1536
    return-void
.end method

.method private stopSelfIfIdle(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    const-string v0, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const-string v0, "TransactionService"

    const-string v2, "stopSelfIfIdle: STOP!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    const-string v0, "TransactionService"

    const-string v2, "stopSelfIfIdle: unRegisterForConnectionStateChanges"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 663
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 672
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v0, :cond_1

    .line 673
    const-string v0, "TransactionService"

    const-string v2, "CloseMobileData update"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 675
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 678
    :cond_1
    monitor-exit v1

    .line 679
    return-void

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchSubscriptionFor(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1682
    const-string v0, "TransactionService"

    const-string v1, "switchSubscriptionFor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    if-eqz p1, :cond_0

    .line 1684
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/SelectMmsSubscription;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1686
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1687
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1688
    const-string v1, "TransactionService"

    const-string v2, "switchSubscriptionFor startService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1691
    :cond_0
    return-void
.end method

.method private updateAndGetTxnRequestStatus(IZ)Lcom/android/mms/transaction/TransactionService$TxnRequest;
    .locals 7
    .param p1, "servId"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1655
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTxnRequestStatus servId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1658
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;

    .line 1659
    .local v1, "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    iget v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->serviceId:I

    if-ne v2, p1, :cond_0

    .line 1660
    const-string v2, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTxnRequestStatus txn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    if-ne p2, v6, :cond_1

    .line 1662
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->anyRequestFailed:I

    .line 1666
    :goto_0
    monitor-exit v3

    .line 1670
    .end local v1    # "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    :goto_1
    return-object v1

    .line 1664
    .restart local v1    # "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->anyRequestFailed:I

    goto :goto_0

    .line 1669
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateTxnRequestStatus(IZ)V
    .locals 7
    .param p1, "servId"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v6, 0x1

    .line 798
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTxnRequestStatus servId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    monitor-enter v3

    .line 801
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;

    .line 802
    .local v1, "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    iget v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->serviceId:I

    if-ne v2, p1, :cond_0

    .line 803
    const-string v2, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTxnRequestStatus txn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    if-ne p2, v6, :cond_1

    .line 805
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->anyRequestFailed:I

    .line 809
    :goto_0
    monitor-exit v3

    .line 813
    .end local v1    # "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    :goto_1
    return-void

    .line 807
    .restart local v1    # "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/mms/transaction/TransactionService$TxnRequest;->anyRequestFailed:I

    goto :goto_0

    .line 812
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "req":Lcom/android/mms/transaction/TransactionService$TxnRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    .line 995
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 998
    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginMmsConnectivity: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1024
    :goto_0
    return v0

    .line 1004
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto :goto_0

    .line 1007
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 1008
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x5

    const-wide/32 v3, 0x124f8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1018
    :pswitch_2
    const-string v1, "TransactionService"

    const-string v2, "beginMmsConnectivity: APN_TYPE_NOT_AVAILABLE or APN_REQUEST_FAILED,enter send fail process."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->mmsConnectivityFailed()V

    goto :goto_0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1032
    :try_start_0
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    const-string v0, "TransactionService"

    const-string v1, "endMmsConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 1051
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v0, :cond_2

    .line 1052
    const-string v0, "TransactionService"

    const-string v1, "CloseMobileData endMmsConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1054
    sput-boolean v3, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 1057
    :cond_2
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 1051
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v1, :cond_3

    .line 1052
    const-string v1, "TransactionService"

    const-string v2, "CloseMobileData endMmsConnectivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1054
    sput-boolean v3, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 1050
    :cond_3
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 267
    const-string v2, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const-string v2, "TransactionService"

    const-string v3, "Creating TransactionService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TransactionService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 277
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 278
    new-instance v2, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 280
    new-instance v2, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/transaction/TransactionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 778
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    const-string v0, "TransactionService"

    const-string v1, "Destroying TransactionService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    const-string v0, "TransactionService"

    const-string v1, "TransactionService exiting with transaction still pending"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 787
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 789
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 790
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;I)V
    .locals 27
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "serviceId"    # I

    .prologue
    .line 355
    const-string v24, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v24

    if-nez v24, :cond_0

    .line 357
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 360
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v24

    if-nez v24, :cond_6

    const/4 v13, 0x1

    .line 362
    .local v13, "noNetwork":Z
    :goto_0
    const-string v24, "Mms:transaction"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 363
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onNewIntent: serviceId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " intent="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v25, "TransactionService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    networkAvailable="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-nez v13, :cond_7

    const/16 v24, 0x1

    :goto_1
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 369
    .local v9, "extras":Landroid/os/Bundle;
    const-string v24, "android.intent.action.ACTION_ONALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    if-eqz v9, :cond_2

    if-eqz v9, :cond_18

    const-string v24, "uri"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_18

    .line 377
    :cond_2
    const/4 v7, 0x0

    .line 378
    .local v7, "cursor":Landroid/database/Cursor;
    sget-boolean v24, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v24, :cond_8

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v7

    .line 385
    :goto_2
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cursor= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v7}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz v7, :cond_16

    .line 388
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 390
    .local v6, "count":I
    const-string v24, "Mms:transaction"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 391
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onNewIntent: cursor.count="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_3
    if-nez v6, :cond_9

    .line 395
    const-string v24, "Mms:transaction"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 396
    const-string v24, "TransactionService"

    const-string v25, "onNewIntent: no pending messages. Stopping service."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 399
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 563
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_3
    return-void

    .line 360
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v13    # "noNetwork":Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 365
    .restart local v13    # "noNetwork":Z
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 381
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "extras":Landroid/os/Bundle;
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_2

    .line 404
    .restart local v6    # "count":I
    :cond_9
    :try_start_1
    const-string v24, "msg_id"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 405
    .local v4, "columnIndexOfMsgId":I
    const-string v24, "msg_type"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, "columnIndexOfMsgType":I
    if-eqz v13, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isAirplaneMode()Z

    move-result v24

    if-nez v24, :cond_a

    .line 411
    const-string v24, "TransactionService"

    const-string v25, "onNewIntent: registerForConnectionStateChanges"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 417
    :cond_a
    :goto_4
    :pswitch_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 418
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 419
    .local v12, "msgType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v19

    .line 427
    .local v19, "transactionType":I
    packed-switch v19, :pswitch_data_0

    .line 444
    :cond_b
    :pswitch_1
    sget-object v24, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v24 .. v26}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 448
    .local v21, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getSubIdFromDb(Landroid/net/Uri;)I

    move-result v18

    .line 449
    .local v18, "subId":I
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SubId from DB= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-ltz v18, :cond_c

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-lt v0, v1, :cond_d

    .line 452
    :cond_c
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "This MMS transaction subid less than 0 . uri="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 499
    .end local v4    # "columnIndexOfMsgId":I
    .end local v5    # "columnIndexOfMsgType":I
    .end local v6    # "count":I
    .end local v12    # "msgType":I
    .end local v18    # "subId":I
    .end local v19    # "transactionType":I
    .end local v21    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v24

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v24

    .line 435
    .restart local v4    # "columnIndexOfMsgId":I
    .restart local v5    # "columnIndexOfMsgType":I
    .restart local v6    # "count":I
    .restart local v12    # "msgType":I
    .restart local v19    # "transactionType":I
    :pswitch_2
    :try_start_2
    const-string v24, "err_type"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 438
    .local v10, "failureType":I
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v24

    if-nez v24, :cond_b

    .line 439
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "!isTransientFailure failureType="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 458
    .end local v10    # "failureType":I
    .restart local v18    # "subId":I
    .restart local v21    # "uri":Landroid/net/Uri;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v24

    if-nez v24, :cond_e

    .line 459
    const-string v24, "TransactionService"

    const-string v25, "!mConnMgr.getMobileDataEnabled()"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 467
    :cond_e
    :try_start_3
    const-string v24, "true"

    const-string v25, "ro.config.ctc_A_version"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/16 v24, 0x2

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/4 v11, 0x1

    .line 468
    .local v11, "isFinalRetry":Z
    :goto_5
    sget-boolean v24, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v24, :cond_13

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getCurrentSubcription()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    .line 470
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "This MMS transaction can not be done on current sub. checkToSwitchOrWait . uri="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v24, "sub_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->checkToSwitchOrWait(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 467
    .end local v11    # "isFinalRetry":Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_5

    :cond_10
    const/4 v11, 0x0

    goto :goto_5

    .line 475
    .restart local v11    # "isFinalRetry":Z
    :cond_11
    if-nez v11, :cond_12

    .line 476
    :try_start_4
    const-string v24, "retry_index"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 478
    .local v16, "retryIndex":I
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "retryIndex = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v17, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 480
    .local v17, "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-lt v0, v1, :cond_14

    const/4 v11, 0x1

    .line 482
    .end local v16    # "retryIndex":I
    .end local v17    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_12
    :goto_6
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isFinalRetry = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_13
    const-string v24, "sub_id"

    const/16 v25, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 486
    .local v15, "requestedSub":I
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RequestedSubId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v26, Lcom/android/mms/transaction/TransactionService$TxnRequest;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v11}, Lcom/android/mms/transaction/TransactionService$TxnRequest;-><init>(Lcom/android/mms/transaction/TransactionService;IIZ)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 491
    :try_start_6
    new-instance v3, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 494
    .local v3, "args":Lcom/android/mms/transaction/TransactionBundle;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 480
    .end local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    .end local v15    # "requestedSub":I
    .restart local v16    # "retryIndex":I
    .restart local v17    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_14
    const/4 v11, 0x0

    goto :goto_6

    .line 490
    .end local v16    # "retryIndex":I
    .end local v17    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v15    # "requestedSub":I
    :catchall_1
    move-exception v24

    :try_start_7
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 499
    .end local v11    # "isFinalRetry":Z
    .end local v12    # "msgType":I
    .end local v15    # "requestedSub":I
    .end local v18    # "subId":I
    .end local v19    # "transactionType":I
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_15
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 502
    .end local v4    # "columnIndexOfMsgId":I
    .end local v5    # "columnIndexOfMsgType":I
    .end local v6    # "count":I
    :cond_16
    const-string v24, "Mms:transaction"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 503
    const-string v24, "TransactionService"

    const-string v25, "onNewIntent: no pending messages. Stopping service."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 506
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V

    .line 507
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto/16 :goto_3

    .line 509
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_18
    const-string v24, "android.intent.action.ACTION_USER_CANCEL_DOWNLOADING"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 510
    const-string v24, "uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 511
    .local v23, "uriString":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 513
    .restart local v21    # "uri":Landroid/net/Uri;
    :try_start_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    .line 514
    .local v14, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v20

    .line 515
    .local v20, "type":I
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onStart: cancelDownloading type : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->cancelDownloading(Landroid/net/Uri;I)V
    :try_end_9
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    .line 519
    .end local v14    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v20    # "type":I
    :catch_0
    move-exception v8

    .line 520
    .local v8, "e":Lcom/google/android/mms/MmsException;
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onStart: cancelDownloading pdu load error uri : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 524
    .end local v8    # "e":Lcom/google/android/mms/MmsException;
    .end local v21    # "uri":Landroid/net/Uri;
    .end local v23    # "uriString":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v24

    if-nez v24, :cond_1a

    .line 525
    const-string v24, "TransactionService"

    const-string v25, "!mConnMgr.getMobileDataEnabled()"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 531
    :cond_1a
    const-string v24, "Mms:transaction"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-nez v24, :cond_1b

    .line 532
    :cond_1b
    const-string v24, "TransactionService"

    const-string v25, "onNewIntent: launch transaction..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v24, "uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 535
    .local v22, "uriStr":Ljava/lang/String;
    const-string v24, "sub_id"

    const/16 v25, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 536
    .restart local v15    # "requestedSub":I
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 537
    .restart local v21    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getSubIdFromDb(Landroid/net/Uri;)I

    move-result v18

    .line 538
    .restart local v18    # "subId":I
    sget-boolean v24, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v24, :cond_1c

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getCurrentSubcription()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    .line 540
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onNewIntent: This MMS transaction can not be done on current sub. checkToSwitchOrWait . uri="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v24, "sub_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->checkToSwitchOrWait(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 546
    :cond_1c
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SubId from DB= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RequestedSubId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 550
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->txnRequestsMap:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v26, Lcom/android/mms/transaction/TransactionService$TxnRequest;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/mms/transaction/TransactionService$TxnRequest;-><init>(Lcom/android/mms/transaction/TransactionService;II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 553
    new-instance v3, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 554
    .restart local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v19

    .line 557
    .restart local v19    # "transactionType":I
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto/16 :goto_3

    .line 551
    .end local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    .end local v19    # "transactionType":I
    :catchall_2
    move-exception v24

    :try_start_b
    monitor-exit v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v24

    .line 427
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 348
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 8

    .prologue
    .line 819
    check-cast p1, Lcom/android/mms/transaction/Transaction;

    .line 820
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v1

    .line 822
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 827
    :cond_0
    const-string v0, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_1
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 833
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 834
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 835
    const-string v0, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    const-string v0, "TransactionService"

    const-string v3, "update: handle next pending transaction..."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 841
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 851
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    .line 855
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    .line 856
    const-string v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    packed-switch v4, :pswitch_data_0

    .line 928
    const-string v0, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 929
    const-string v0, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction state unknown: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_4
    :goto_1
    const-string v0, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 936
    const-string v0, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: broadcast transaction result "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 941
    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 942
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 944
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 945
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V

    .line 948
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 949
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v0

    if-nez v0, :cond_8

    .line 954
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->needDataSwitchBack()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 956
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 957
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 961
    :cond_8
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v0, :cond_9

    .line 962
    const-string v0, "TransactionService"

    const-string v1, "CloseMobileData update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 964
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 967
    :cond_9
    return-void

    .line 844
    :cond_a
    :try_start_3
    const-string v0, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 845
    const-string v0, "TransactionService"

    const-string v3, "update: endMmsConnectivity"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_b
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 848
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto/16 :goto_0

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 941
    :catchall_1
    move-exception v0

    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 942
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 944
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 945
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V

    .line 948
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 949
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v1

    if-nez v1, :cond_e

    .line 954
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->needDataSwitchBack()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 956
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 957
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mDataSwitchHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/32 v3, 0xafc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 961
    :cond_e
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v1, :cond_f

    .line 962
    const-string v1, "TransactionService"

    const-string v2, "CloseMobileData update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 964
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    .line 941
    :cond_f
    throw v0

    .line 860
    :pswitch_0
    const/4 v0, 0x1

    :try_start_5
    invoke-direct {p0, v1, v0}, Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V

    .line 861
    const-string v0, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 862
    const-string v0, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_10
    const-string v0, "uri"

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 868
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 871
    :pswitch_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 872
    const-string v5, "pref_key_mms_auto_retrieval"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 873
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v5

    .line 874
    if-nez v0, :cond_11

    const/16 v0, 0x80

    if-eq v5, v0, :cond_4

    .line 881
    :cond_11
    :pswitch_2
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v5

    .line 883
    const/4 v0, 0x0

    invoke-static {p0, v5, v6, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 886
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 888
    const-string v0, "TransactionService"

    const-string v3, " Mms Download Success,Cancel download progress dialog event sent .. "

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const/16 v3, 0x7dc

    invoke-virtual {v0, v3}, Lcom/android/mms/MmsApp;->broadcastEvent(I)V

    goto/16 :goto_1

    .line 893
    :pswitch_3
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_1

    .line 898
    :pswitch_4
    const/4 v0, 0x0

    .line 899
    sget-boolean v5, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-eqz v5, :cond_13

    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/transaction/TransactionService;->updateAndGetTxnRequestStatus(IZ)Lcom/android/mms/transaction/TransactionService$TxnRequest;

    move-result-object v0

    .line 904
    :goto_2
    const-string v5, "Mms:transaction"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 905
    :cond_12
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-static {}, Lcom/android/mms/MmsConfig;->needDataSwitchBack()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 909
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 902
    :cond_13
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V

    goto :goto_2

    .line 910
    :cond_14
    sget-boolean v5, Lcom/android/mms/transaction/TransactionService;->isNeedToSwitchSubscriptionOrWaitProcess:Z

    if-nez v5, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->needDataSwitchBack()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_15

    .line 912
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 913
    :cond_15
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 914
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 915
    :cond_16
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 916
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isAirplaneMode()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 917
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService;->dealWithFailedMessage(Landroid/net/Uri;)V

    .line 918
    if-eqz v0, :cond_17

    .line 919
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->isNoRetry:Z

    .line 921
    :cond_17
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 922
    :cond_18
    if-eqz v0, :cond_19

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService$TxnRequest;->isNoRetry:Z

    if-nez v0, :cond_4

    .line 923
    :cond_19
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 868
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
