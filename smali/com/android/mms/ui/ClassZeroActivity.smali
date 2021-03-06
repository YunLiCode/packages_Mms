.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final BUFFER_OFFSET:I

.field private static final REPLACE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Landroid/telephony/SmsMessage;

.field private mRead:Z

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTimerSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "         "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/ClassZeroActivity;->BUFFER_OFFSET:I

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    .line 70
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 72
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 175
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ClassZeroActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V

    return-void
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "date"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v1, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v4, "read"

    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v4, "seen"

    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 198
    const-string v1, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    const-string v1, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v1, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-object v0

    :cond_1
    move v1, v3

    .line 194
    goto :goto_0

    :cond_2
    move v1, v3

    .line 195
    goto :goto_1

    :cond_3
    move v2, v3

    .line 200
    goto :goto_2
.end method

.method private replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 17
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 206
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v9

    .line 208
    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "body"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ClassZeroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 211
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    .line 212
    .local v15, "originatingAddress":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v16

    .line 213
    .local v16, "protocolIdentifier":I
    const-string v4, "address = ? AND protocol = ?"

    .line 214
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v15, v5, v0

    const/4 v0, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 217
    .local v5, "selectionArgs":[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 221
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 223
    .local v13, "messageId":J
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 226
    .local v8, "messageUri":Landroid/net/Uri;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v8    # "messageUri":Landroid/net/Uri;
    .end local v13    # "messageId":J
    :goto_0
    return-object v8

    .line 231
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0
.end method

.method private saveMessage()V
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "messageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 93
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 98
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 4
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    .line 239
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "body"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ClassZeroActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f0200c6

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "pdu"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 108
    .local v5, "pdu":[B
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "format"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "format":Ljava/lang/String;
    invoke-static {v5, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    .line 110
    iget-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "messageChars":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sget v7, Lcom/android/mms/ui/ClassZeroActivity;->BUFFER_OFFSET:I

    if-ge v6, v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "         "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 122
    .local v3, "now":J
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0b0127

    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    iget-object v8, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 126
    const-wide/32 v6, 0x493e0

    add-long/2addr v6, v3

    iput-wide v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v6, "timer_fire"

    iget-wide v7, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    return-void
.end method
