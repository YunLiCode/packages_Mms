.class Lcom/android/mms/data/Conversation$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 399
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "markAsRead"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/Conversation;->buildReadContentValues()V
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)V

    .line 411
    const/4 v8, 0x1

    .line 413
    .local v8, "needUpdate":Z
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v3, "(read=0 OR seen=0)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 416
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 418
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v8, 0x1

    .line 420
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_1
    if-eqz v8, :cond_3

    .line 425
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$300(Lcom/android/mms/data/Conversation;)J

    move-result-wide v2

    const/16 v4, 0x80

    # invokes: Lcom/android/mms/data/Conversation;->sendReadReport(Landroid/content/Context;JI)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;Landroid/content/Context;JI)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markAsRead: update read/seen for thread uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    # getter for: Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$500()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "(read=0 OR seen=0)"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "needUpdate":Z
    :goto_1
    return-void

    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "needUpdate":Z
    :cond_2
    move v8, v9

    .line 418
    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 431
    :catch_0
    move-exception v7

    .line 432
    .local v7, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v0, "Mms/conv"

    const-string v1, "Database is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 434
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/mms/data/Conversation;->showToast(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$600(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 436
    .end local v7    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V
    invoke-static {v0, v9}, Lcom/android/mms/data/Conversation;->access$700(Lcom/android/mms/data/Conversation;Z)V

    .line 442
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "needUpdate":Z
    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_1
.end method
