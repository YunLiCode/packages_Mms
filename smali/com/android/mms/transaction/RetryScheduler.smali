.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method private getResponseStatus(J)I
    .locals 9
    .param p1, "msgID"    # J

    .prologue
    const/4 v3, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, "respStatus":I
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 257
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 261
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 263
    if-eqz v8, :cond_1

    .line 264
    const-string v0, "RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    return v8

    .line 261
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getRetrieveStatus(J)I
    .locals 9
    .param p1, "msgID"    # J

    .prologue
    const/4 v3, 0x0

    .line 271
    const/4 v8, 0x0

    .line 272
    .local v8, "retrieveStatus":I
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 275
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 280
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    if-eqz v8, :cond_1

    .line 283
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const-string v0, "RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieve status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    return v8

    .line 280
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private scheduleRetry(Landroid/net/Uri;)V
    .locals 35
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 106
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 108
    .local v23, "msgId":J
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v34

    .line 109
    .local v34, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v3, "protocol"

    const-string v4, "mms"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    const-string v3, "message"

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 115
    .local v17, "cursor":Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 117
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 118
    const-string v3, "msg_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 121
    .local v25, "msgType":I
    const-string v3, "retry_index"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v30, v3, 0x1

    .line 125
    .local v30, "retryIndex":I
    const/16 v19, 0x1

    .line 127
    .local v19, "errorType":I
    new-instance v31, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-direct {v0, v3, v1}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 129
    .local v31, "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v10, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 130
    .local v10, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 131
    .local v15, "current":J
    const/16 v3, 0x82

    move/from16 v0, v25

    if-ne v0, v3, :cond_5

    const/16 v22, 0x1

    .line 133
    .local v22, "isRetryDownloading":Z
    :goto_0
    const/16 v27, 0x1

    .line 134
    .local v27, "retry":Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getResponseStatus(J)I

    move-result v26

    .line 135
    .local v26, "respStatus":I
    const/16 v18, 0x0

    .line 136
    .local v18, "errorString":I
    if-nez v22, :cond_6

    .line 138
    sparse-switch v26, :sswitch_data_0

    .line 154
    :goto_1
    if-eqz v18, :cond_0

    .line 155
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 156
    const/16 v27, 0x0

    .line 160
    :cond_0
    const-string v3, "true"

    const-string v4, "ro.config.a.enable"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const/16 v27, 0x0

    .line 184
    :cond_1
    :goto_2
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_8

    if-eqz v27, :cond_8

    .line 185
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v3

    add-long v28, v15, v3

    .line 187
    .local v28, "retryAt":J
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const-string v3, "RetryScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleRetry: retry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is scheduled at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v28, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms from now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    const-string v3, "due_time"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    if-eqz v22, :cond_3

    .line 196
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 233
    .end local v28    # "retryAt":J
    :cond_3
    :goto_3
    const-string v3, "err_type"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v3, "retry_index"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v3, "last_try"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 239
    .local v14, "columnIndex":I
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 240
    .local v20, "id":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v14    # "columnIndex":I
    .end local v15    # "current":J
    .end local v18    # "errorString":I
    .end local v19    # "errorType":I
    .end local v20    # "id":J
    .end local v22    # "isRetryDownloading":Z
    .end local v25    # "msgType":I
    .end local v26    # "respStatus":I
    .end local v27    # "retry":Z
    .end local v30    # "retryIndex":I
    .end local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_4
    :goto_5
    return-void

    .line 131
    .restart local v10    # "values":Landroid/content/ContentValues;
    .restart local v15    # "current":J
    .restart local v19    # "errorType":I
    .restart local v25    # "msgType":I
    .restart local v30    # "retryIndex":I
    .restart local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 140
    .restart local v18    # "errorString":I
    .restart local v22    # "isRetryDownloading":Z
    .restart local v26    # "respStatus":I
    .restart local v27    # "retry":Z
    :sswitch_0
    const v18, 0x7f0b0059

    .line 141
    goto/16 :goto_1

    .line 144
    :sswitch_1
    const v18, 0x7f0b005a

    .line 145
    goto/16 :goto_1

    .line 147
    :sswitch_2
    const v18, 0x7f0b005c

    .line 148
    goto/16 :goto_1

    .line 151
    :sswitch_3
    const v18, 0x7f0b005b

    goto/16 :goto_1

    .line 167
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getRetrieveStatus(J)I

    move-result v26

    .line 168
    const/16 v3, 0xe4

    move/from16 v0, v26

    if-ne v0, v3, :cond_7

    .line 170
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    const/16 v27, 0x0

    .line 247
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 179
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 200
    :cond_8
    const/16 v19, 0xa

    .line 201
    if-eqz v22, :cond_c

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 205
    .local v13, "c":Landroid/database/Cursor;
    const-wide/16 v32, -0x1

    .line 206
    .local v32, "threadId":J
    if-eqz v13, :cond_a

    .line 208
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 209
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v32

    .line 212
    :cond_9
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_a
    const-wide/16 v3, -0x1

    cmp-long v3, v32, v3

    if-eqz v3, :cond_b

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v32

    invoke-static {v3, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 221
    :cond_b
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x87

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 247
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v15    # "current":J
    .end local v18    # "errorString":I
    .end local v19    # "errorType":I
    .end local v22    # "isRetryDownloading":Z
    .end local v25    # "msgType":I
    .end local v26    # "respStatus":I
    .end local v27    # "retry":Z
    .end local v30    # "retryIndex":I
    .end local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v32    # "threadId":J
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .line 212
    .restart local v10    # "values":Landroid/content/ContentValues;
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v15    # "current":J
    .restart local v18    # "errorString":I
    .restart local v19    # "errorType":I
    .restart local v22    # "isRetryDownloading":Z
    .restart local v25    # "msgType":I
    .restart local v26    # "respStatus":I
    .restart local v27    # "retry":Z
    .restart local v30    # "retryIndex":I
    .restart local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v32    # "threadId":J
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 225
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v32    # "threadId":J
    :cond_c
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 226
    .local v6, "readValues":Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_3

    .line 244
    .end local v6    # "readValues":Landroid/content/ContentValues;
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v15    # "current":J
    .end local v18    # "errorString":I
    .end local v19    # "errorType":I
    .end local v22    # "isRetryDownloading":Z
    .end local v25    # "msgType":I
    .end local v26    # "respStatus":I
    .end local v27    # "retry":Z
    .end local v30    # "retryIndex":I
    .end local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_d
    const-string v3, "RetryScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot found correct pending status for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x84 -> :sswitch_0
        0x86 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xe1 -> :sswitch_1
        0xe4 -> :sswitch_3
    .end sparse-switch
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 291
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_1

    .line 295
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "due_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_ONALARM"

    const/4 v5, 0x0

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    const/4 v4, 0x0

    const/high16 v5, 0x40000000

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 304
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 307
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 309
    const-string v0, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "RetryScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next retry is scheduled at"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms from now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_1
    return-void

    .line 315
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 8
    .param p1, "observable"    # Lcom/android/mms/transaction/Observable;

    .prologue
    const/4 v7, 0x2

    .line 75
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v2, v0

    .line 77
    .local v2, "t":Lcom/android/mms/transaction/Transaction;
    const-string v4, "Mms:transaction"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const-string v4, "RetryScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetryScheduler] update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    instance-of v4, v2, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/android/mms/transaction/SendTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 88
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v1

    .line 89
    .local v1, "state":Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 90
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 91
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 92
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_2
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .end local v1    # "state":Lcom/android/mms/transaction/TransactionState;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 103
    return-void

    .line 96
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    .end local v2    # "t":Lcom/android/mms/transaction/Transaction;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    throw v4
.end method
