.class Lcom/android/mms/ui/SmsSelectorActivity$2;
.super Ljava/lang/Thread;
.source "SmsSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSelectorActivity;->deleteFromSim([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;

.field final synthetic val$ids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->val$ids:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 102
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->val$ids:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BaseSelectorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->val$ids:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 104
    .local v11, "simUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1, v11, v3, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    rem-int/lit8 v0, v8, 0x5

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    const-string v0, "Trace"

    const-string v1, "Sleeping for 1000ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v7

    .line 111
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "Trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when sleeping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "simUri":Landroid/net/Uri;
    :cond_1
    const/4 v9, 0x1

    .line 117
    .local v9, "isNotDeleteSucceed":Z
    const/4 v6, 0x0

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSelectorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v1, v1, Lcom/android/mms/ui/BaseSelectorActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 122
    const/4 v9, 0x0

    .line 124
    :cond_2
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    if-eqz v6, :cond_3

    .line 129
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity$2;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    .line 135
    .local v10, "message":Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void

    .line 125
    .end local v10    # "message":Landroid/os/Message;
    :catch_1
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when sleeping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    if-eqz v6, :cond_3

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_4
    throw v0
.end method
