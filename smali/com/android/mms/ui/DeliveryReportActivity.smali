.class public Lcom/android/mms/ui/DeliveryReportActivity;
.super Landroid/app/ListActivity;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;,
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    }
.end annotation


# static fields
.field static final MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mMessageId:J

.field private mMessageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "d_rpt"

    aput-object v1, v0, v3

    const-string v1, "rr"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "delivery_status"

    aput-object v1, v0, v3

    const-string v1, "read_status"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "status"

    aput-object v1, v0, v3

    const-string v1, "date_sent"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 374
    return-void
.end method

.method private getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v3, 0x0

    .line 137
    const-wide/16 v0, 0x0

    .line 139
    .local v0, "msgId":J
    if-eqz p1, :cond_0

    .line 140
    const-string v2, "message_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 143
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 144
    const-string v2, "message_id"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 147
    :cond_1
    return-wide v0
.end method

.method private getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "msgType":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 154
    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    if-nez v0, :cond_1

    .line 158
    const-string v1, "message_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1
    return-object v0
.end method

.method private getMmsReportItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 270
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportRequests()Ljava/util/List;

    move-result-object v3

    .line 271
    .local v3, "reportReqs":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    if-nez v3, :cond_1

    move-object v1, v6

    .line 287
    :cond_0
    :goto_0
    return-object v1

    .line 275
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    move-object v1, v6

    .line 276
    goto :goto_0

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatus()Ljava/util/Map;

    move-result-object v4

    .line 280
    .local v4, "reportStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    .line 282
    .local v2, "reportReq":Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0b00db

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "statusText":Ljava/lang/String;
    new-instance v7, Lcom/android/mms/ui/DeliveryReportItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5, v6}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getMmsReportRequests()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 321
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 323
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 326
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 342
    :goto_0
    return-object v4

    .line 331
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 344
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 335
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v8, "reqList":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    new-instance v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 344
    .end local v8    # "reqList":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8    # "reqList":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    .line 342
    goto :goto_0
.end method

.method private getMmsReportStatus()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 291
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 293
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 296
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 314
    :goto_0
    return-object v4

    .line 301
    :cond_0
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v10, "statusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "recipient":Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 309
    :goto_2
    new-instance v9, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v9, v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;-><init>(II)V

    .line 312
    .local v9, "status":Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 316
    .end local v8    # "recipient":Ljava/lang/String;
    .end local v9    # "status":Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v10    # "statusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 306
    .restart local v8    # "recipient":Ljava/lang/String;
    .restart local v10    # "statusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_1
    :try_start_1
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 316
    .end local v8    # "recipient":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v10

    .line 314
    goto :goto_0
.end method

.method private getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "request"    # Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "reportStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    const v3, 0x7f0b00d4

    .line 211
    if-nez p2, :cond_0

    .line 213
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    :goto_0
    return-object v2

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "recipient":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_1
    invoke-static {p2, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v1

    .line 220
    .local v1, "status":Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    if-nez v1, :cond_2

    .line 222
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 217
    .end local v1    # "status":Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 225
    .restart local v1    # "status":Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    if-eqz v2, :cond_3

    .line 227
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    packed-switch v2, :pswitch_data_0

    .line 236
    :cond_3
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 247
    const v2, 0x7f0b00d7

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 229
    :pswitch_0
    const v2, 0x7f0b00d5

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 231
    :pswitch_1
    const v2, 0x7f0b00d8

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 238
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 241
    :sswitch_1
    const v2, 0x7f0b00d6

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 243
    :sswitch_2
    const v2, 0x7f0b00d9

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 245
    :sswitch_3
    const v2, 0x7f0b0194

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method private getReportItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsReportItems()Ljava/util/List;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getSmsReportItems()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v5, 0x0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 176
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 202
    :goto_0
    return-object v5

    .line 181
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 204
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 185
    :cond_1
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const/4 v10, 0x0

    .line 190
    .local v10, "deliveryDateString":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 191
    .local v8, "deliveryDate":J
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 192
    .local v12, "messageType":I
    if-ne v12, v13, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b00dc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v8, v9, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 197
    :cond_2
    new-instance v0, Lcom/android/mms/ui/DeliveryReportItem;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b00db

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsStatusText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v10}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 204
    .end local v8    # "deliveryDate":J
    .end local v10    # "deliveryDateString":Ljava/lang/String;
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v12    # "messageType":I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v5, v11

    .line 202
    goto :goto_0
.end method

.method private getSmsStatusText(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 349
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 351
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    .line 352
    :cond_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 354
    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_1
    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    .line 357
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_2
    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initListAdapter()V
    .locals 5

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems()Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    new-instance v1, Lcom/android/mms/ui/DeliveryReportItem;

    const-string v2, ""

    const v3, 0x7f0b00d3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "DeliveryReportActivity"

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    new-instance v1, Lcom/android/mms/ui/DeliveryReportAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/DeliveryReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method

.method private initListView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000e

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 112
    return-void
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .locals 4
    .param p1, "recipient"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "status":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 254
    .local v2, "recipientSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "r":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    .line 266
    .end local v1    # "r":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 262
    .restart local v1    # "r":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    goto :goto_0

    .line 266
    .end local v1    # "r":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private refreshDeliveryReport()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 132
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 133
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 134
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->requestWindowFeature(I)Z

    .line 97
    const v1, 0x7f04000d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListView()V

    .line 104
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListAdapter()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->refreshDeliveryReport()V

    .line 128
    return-void
.end method
