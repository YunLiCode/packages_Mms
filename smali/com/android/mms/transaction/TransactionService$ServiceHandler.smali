.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 1061
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1062
    return-void
.end method

.method private decodeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1065
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1066
    const-string v0, "EVENT_QUIT"

    .line 1076
    :goto_0
    return-object v0

    .line 1067
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1068
    const-string v0, "EVENT_CONTINUE_MMS_CONNECTIVITY"

    goto :goto_0

    .line 1069
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1070
    const-string v0, "EVENT_TRANSACTION_REQUEST"

    goto :goto_0

    .line 1071
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1072
    const-string v0, "EVENT_HANDLE_NEXT_PENDING_TRANSACTION"

    goto :goto_0

    .line 1073
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1074
    const-string v0, "EVENT_NEW_INTENT"

    goto :goto_0

    .line 1076
    :cond_4
    const-string v0, "unknown message.what"

    goto :goto_0
.end method

.method private decodeTransactionType(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionType"    # I

    .prologue
    .line 1080
    if-nez p1, :cond_0

    .line 1081
    const-string v0, "NOTIFICATION_TRANSACTION"

    .line 1089
    :goto_0
    return-object v0

    .line 1082
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1083
    const-string v0, "RETRIEVE_TRANSACTION"

    goto :goto_0

    .line 1084
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1085
    const-string v0, "SEND_TRANSACTION"

    goto :goto_0

    .line 1086
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1087
    const-string v0, "READREC_TRANSACTION"

    goto :goto_0

    .line 1089
    :cond_3
    const-string v0, "invalid transaction type"

    goto :goto_0
.end method

.method private isDuplicateRetrieve(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/Transaction;)Z
    .locals 4
    .param p1, "t1"    # Lcom/android/mms/transaction/Transaction;
    .param p2, "t2"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1427
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v2

    .line 1447
    .end local p1    # "t1":Lcom/android/mms/transaction/Transaction;
    .end local p2    # "t2":Lcom/android/mms/transaction/Transaction;
    :goto_0
    return v0

    .line 1431
    .restart local p1    # "t1":Lcom/android/mms/transaction/Transaction;
    .restart local p2    # "t2":Lcom/android/mms/transaction/Transaction;
    :cond_1
    instance-of v0, p1, Lcom/android/mms/transaction/NotificationTransaction;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1433
    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-virtual {v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1435
    goto :goto_0

    .line 1439
    :cond_2
    instance-of v0, p1, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v0, :cond_3

    .line 1441
    check-cast p1, Lcom/android/mms/transaction/RetrieveTransaction;

    .end local p1    # "t1":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {p1}, Lcom/android/mms/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p2, Lcom/android/mms/transaction/RetrieveTransaction;

    .end local p2    # "t2":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {p2}, Lcom/android/mms/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1443
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1447
    goto :goto_0
.end method

.method private processMmsConnectivityUnavailable(I)V
    .locals 8
    .param p1, "transctionType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1316
    const-string v0, "TransactionService"

    const-string v1, "processMmsConnectivityUnavailable : current APN is UNAVAILABLE, view show Hint fail . "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1321
    :cond_0
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transction type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    if-nez p1, :cond_3

    .line 1325
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1358
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1359
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1362
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_0

    .line 1327
    :cond_3
    if-ne p1, v5, :cond_5

    .line 1329
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->broadcastEvent(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1331
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1332
    const-string v0, "TransactionService"

    const-string v1, "processMmsConnectivityUnavailable mWorkingMmsUri is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1336
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1337
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1342
    :cond_5
    if-ne p1, v4, :cond_1

    .line 1344
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1345
    const-string v0, "TransactionService"

    const-string v1, "processMmsConnectivityUnavailable mWorkingMmsUri is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1349
    :cond_6
    const-string v0, "TransactionService"

    const-string v1, "processMmsConnectivityUnavailable : update database error_type  to fail . "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1352
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1353
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1354
    .local v6, "msgId":J
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

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

    goto/16 :goto_1

    .line 1362
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v6    # "msgId":J
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 9
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 1460
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 1461
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/Transaction;

    .line 1462
    .local v2, "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v2, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1463
    const-string v3, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1464
    const-string v3, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction already pending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_1
    monitor-exit v4

    .line 1527
    .end local v2    # "t":Lcom/android/mms/transaction/Transaction;
    :goto_0
    return v8

    .line 1468
    .restart local v2    # "t":Lcom/android/mms/transaction/Transaction;
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->isDuplicateRetrieve(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1469
    const-string v3, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1470
    :cond_3
    const-string v3, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate Retrieve Transaction pending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    .line 1474
    monitor-exit v4

    goto :goto_0

    .line 1514
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1477
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/Transaction;

    .line 1478
    .restart local v2    # "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v2, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1479
    const-string v3, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1480
    const-string v3, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicated transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_6
    monitor-exit v4

    goto :goto_0

    .line 1483
    :cond_7
    invoke-direct {p0, v2, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->isDuplicateRetrieve(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1484
    const-string v3, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1485
    :cond_8
    const-string v3, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate Retrieve Transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    monitor-exit v4

    goto/16 :goto_0

    .line 1497
    .end local v2    # "t":Lcom/android/mms/transaction/Transaction;
    :cond_9
    const-string v3, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1498
    const-string v3, "TransactionService"

    const-string v5, "processTransaction: call beginMmsConnectivity..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_a
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v0

    .line 1501
    .local v0, "connectivityResult":I
    if-ne v0, v8, :cond_c

    .line 1502
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    const-string v3, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1504
    const-string v3, "TransactionService"

    const-string v5, "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_b
    monitor-exit v4

    goto/16 :goto_0

    .line 1510
    :cond_c
    const-string v3, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1511
    const-string v3, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_d
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1520
    const-string v3, "Mms:transaction"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1521
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processTransaction: starting transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_e
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v3}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1526
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->process()V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1099
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1100
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Handling incoming message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    const/4 v14, 0x0

    .line 1105
    .local v14, "transaction":Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 1308
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "what="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_1
    :goto_0
    return-void

    .line 1107
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNewIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1111
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1115
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    monitor-enter v21

    .line 1116
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1117
    monitor-exit v21

    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    :cond_2
    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1121
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1122
    const-string v20, "TransactionService"

    const-string v21, "handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v11

    .line 1127
    .local v11, "result":I
    if-eqz v11, :cond_4

    .line 1128
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Extending MMS connectivity returned "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1134
    .end local v11    # "result":I
    :catch_0
    move-exception v4

    .line 1135
    .local v4, "e":Ljava/io/IOException;
    const-string v20, "TransactionService"

    const-string v21, "Attempt to extend use of MMS connectivity failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1140
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v11    # "result":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)V

    goto/16 :goto_0

    .line 1144
    .end local v11    # "result":I
    :sswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1146
    .local v12, "serviceId":I
    :try_start_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/transaction/TransactionBundle;

    .line 1149
    .local v3, "args":Lcom/android/mms/transaction/TransactionBundle;
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1150
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EVENT_TRANSACTION_REQUEST MmscUrl="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " proxy port: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v8

    .line 1157
    .local v8, "mmsc":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 1158
    new-instance v16, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v8, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1165
    .local v16, "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v17

    .line 1166
    .local v17, "transactionType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    # setter for: Lcom/android/mms/transaction/TransactionService;->mWorkingTransactionType:I
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$302(Lcom/android/mms/transaction/TransactionService;I)I

    .line 1168
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1169
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeTransactionType(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    if-eqz v16, :cond_6

    .line 1172
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mmsc="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", address="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", port="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_6
    packed-switch v17, :pswitch_data_0

    .line 1222
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalid transaction type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1223
    const/4 v14, 0x0

    .line 1255
    if-nez v14, :cond_1

    .line 1256
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1257
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V
    invoke-static {v0, v12}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1161
    .end local v16    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    .end local v17    # "transactionType":I
    :cond_8
    :try_start_4
    new-instance v16, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v16    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    goto/16 :goto_1

    .line 1181
    .restart local v17    # "transactionType":I
    :pswitch_0
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v19

    .line 1182
    .local v19, "uri":Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 1183
    new-instance v15, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    .local v15, "transaction":Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .line 1227
    .end local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .end local v19    # "uri":Ljava/lang/String;
    .restart local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v20

    if-nez v20, :cond_d

    .line 1228
    const/4 v14, 0x0

    .line 1255
    if-nez v14, :cond_1

    .line 1256
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1257
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V
    invoke-static {v0, v12}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1188
    .restart local v19    # "uri":Ljava/lang/String;
    :cond_a
    :try_start_5
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v10

    .line 1189
    .local v10, "pushData":[B
    new-instance v9, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v9, v10}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 1190
    .local v9, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    .line 1192
    .local v6, "ind":Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v18, 0x82

    .line 1193
    .local v18, "type":I
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1194
    new-instance v15, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    check-cast v6, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v6    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v12, v1, v6}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .line 1203
    .end local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 1198
    .restart local v6    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_b
    const-string v20, "TransactionService"

    const-string v21, "Invalid PUSH data."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1199
    const/4 v14, 0x0

    .line 1255
    if-nez v14, :cond_1

    .line 1256
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1257
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V
    invoke-static {v0, v12}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1205
    .end local v6    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v9    # "parser":Lcom/google/android/mms/pdu/PduParser;
    .end local v10    # "pushData":[B
    .end local v18    # "type":I
    .end local v19    # "uri":Ljava/lang/String;
    :pswitch_1
    :try_start_6
    new-instance v15, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1208
    .end local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    # setter for: Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$402(Lcom/android/mms/transaction/TransactionService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v14, v15

    .line 1209
    .end local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_2

    .line 1211
    :pswitch_2
    :try_start_8
    new-instance v15, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1214
    .end local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    # setter for: Lcom/android/mms/transaction/TransactionService;->mWorkingMmsUri:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$402(Lcom/android/mms/transaction/TransactionService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v14, v15

    .line 1215
    .end local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_2

    .line 1217
    :pswitch_3
    :try_start_a
    new-instance v15, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v12, v1, v2}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    move-object v14, v15

    .line 1220
    .end local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_2

    .line 1232
    :cond_d
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1233
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Started processing of incoming message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1255
    :cond_e
    if-nez v14, :cond_1

    .line 1256
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1257
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V
    invoke-static {v0, v12}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1235
    .end local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    .end local v8    # "mmsc":Ljava/lang/String;
    .end local v16    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    .end local v17    # "transactionType":I
    :catch_1
    move-exception v5

    .line 1236
    .local v5, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_b
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception occurred while handling message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1238
    if-eqz v14, :cond_11

    .line 1240
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v21

    monitor-enter v21
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1243
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1244
    monitor-exit v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1251
    :cond_10
    const/4 v14, 0x0

    .line 1255
    :cond_11
    :goto_4
    if-nez v14, :cond_1

    .line 1256
    const-string v20, "Mms:transaction"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1257
    const-string v20, "TransactionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Transaction was null. Stopping self: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V
    invoke-static {v0, v12}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1244
    :catchall_1
    move-exception v20

    :try_start_e
    monitor-exit v21
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v20
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1246
    :catch_2
    move-exception v13

    .line 1247
    .local v13, "t":Ljava/lang/Throwable;
    :try_start_10
    const-string v20, "TransactionService"

    const-string v21, "Unexpected Throwable."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1251
    const/4 v14, 0x0

    .line 1252
    goto :goto_4

    .line 1251
    .end local v13    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v20

    const/4 v14, 0x0

    :try_start_11
    throw v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1255
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_3
    move-exception v20

    :goto_5
    if-nez v14, :cond_14

    .line 1256
    const-string v21, "Mms:transaction"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1257
    const-string v21, "TransactionService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Transaction was null. Stopping self: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    # invokes: Lcom/android/mms/transaction/TransactionService;->removeNotification(I)V
    invoke-static {v0, v12}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    :cond_14
    throw v20

    .line 1266
    .end local v12    # "serviceId":I
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 1269
    :sswitch_5
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$608(Lcom/android/mms/transaction/TransactionService;)I

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    .line 1272
    const-string v20, "TransactionService"

    const-string v21, "MMS_CONNECTIVITY_TIMEOUT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/mms/transaction/TransactionService;->mMmsConnecvivityRetryCount:I
    invoke-static/range {v20 .. v21}, Lcom/android/mms/transaction/TransactionService;->access$602(Lcom/android/mms/transaction/TransactionService;I)I

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/mms/transaction/TransactionService;->mmsConnectivityFailed()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)V

    .line 1282
    sget-boolean v20, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v20, :cond_1

    .line 1283
    const-string v20, "TransactionService"

    const-string v21, "CloseMobileData update"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1285
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    goto/16 :goto_0

    .line 1290
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1292
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_0

    .line 1293
    :catch_3
    move-exception v4

    .line 1294
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v20, "TransactionService"

    const-string v21, "Attempt to use of MMS connectivity failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1300
    .end local v4    # "e":Ljava/io/IOException;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/transaction/TransactionService;->mWorkingTransactionType:I
    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processMmsConnectivityUnavailable(I)V

    goto/16 :goto_0

    .line 1303
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Intent;

    .line 1304
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/mms/transaction/TransactionService;->switchSubscriptionFor(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;)V

    .line 1305
    const-string v20, "TransactionService"

    const-string v21, "end EVENT_HANDLE_NEXT_NEED_SWITCH_PENDING"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1255
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    .restart local v8    # "mmsc":Ljava/lang/String;
    .restart local v12    # "serviceId":I
    .restart local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v16    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    .restart local v17    # "transactionType":I
    :catchall_4
    move-exception v20

    move-object v14, v15

    .end local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_5

    .line 1235
    .end local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    :catch_4
    move-exception v5

    move-object v14, v15

    .end local v15    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v14    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_3

    .line 1105
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_0
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 1179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 8
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;
    .param p2, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    const/4 v7, 0x2

    .line 1369
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1370
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: transaction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_0
    const/4 v2, 0x0

    .line 1374
    .local v2, "numProcessTransaction":I
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 1375
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1376
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 1378
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1379
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    if-eqz p1, :cond_6

    .line 1382
    if-eqz p2, :cond_2

    .line 1383
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 1390
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 1392
    .local v3, "serviceId":I
    const-string v4, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1393
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1397
    const-string v4, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1398
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started deferred processing of transaction  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1424
    .end local v3    # "serviceId":I
    :cond_4
    :goto_0
    return-void

    .line 1379
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1402
    .restart local v3    # "serviceId":I
    :cond_5
    const/4 p1, 0x0

    .line 1403
    :try_start_3
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v5, 0x0

    # invokes: Lcom/android/mms/transaction/TransactionService;->updateTxnRequestStatus(IZ)V
    invoke-static {v4, v3, v5}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;IZ)V

    .line 1404
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 1405
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z

    if-eqz v4, :cond_4

    .line 1406
    const-string v4, "TransactionService"

    const-string v5, "CloseMobileData processPendingTransaction"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1408
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/transaction/TransactionService;->isNeedToCloseMobileData:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1411
    .end local v3    # "serviceId":I
    :catch_0
    move-exception v1

    .line 1412
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TransactionService"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1413
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 1414
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v5

    # invokes: Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    invoke-static {v4, v5}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;I)V

    goto :goto_0

    .line 1417
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    if-nez v2, :cond_4

    .line 1418
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1419
    const-string v4, "TransactionService"

    const-string v5, "processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_7
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0
.end method
