.class public Lcom/android/mms/ui/SmsSelectorActivity;
.super Lcom/android/mms/ui/BaseSelectorActivity;
.source "SmsSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private sSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/BaseSelectorActivity;-><init>()V

    .line 212
    new-instance v0, Lcom/android/mms/ui/SmsSelectorActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsSelectorActivity$5;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;

    .line 413
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SmsSelectorActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsSelectorActivity;Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SmsSelectorActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsSelectorActivity;->copyToPhoneMemory(Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SmsSelectorActivity;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsSelectorActivity;->moveToSim([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SmsSelectorActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SmsSelectorActivity;->deleteSms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsSelectorActivity;[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SmsSelectorActivity;
    .param p1, "x1"    # [Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsSelectorActivity;->moveToPhone([Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SmsSelectorActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsSelectorActivity;->deleteFromSim([Ljava/lang/String;)V

    return-void
.end method

.method private copyToPhoneMemory(Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)Z
    .locals 12
    .param p1, "msgItem"    # Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 183
    iget-object v1, p1, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mAddress:Ljava/lang/String;

    .line 184
    .local v1, "address":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mBody:Ljava/lang/String;

    .line 185
    .local v2, "body":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mDate:Ljava/lang/Long;

    .line 186
    .local v4, "date":Ljava/lang/Long;
    iget v6, p1, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mSubId:I

    .line 187
    .local v6, "subId":I
    iget v9, p1, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mStatus:I

    .line 189
    .local v9, "messageStatus":I
    if-eq v9, v11, :cond_0

    const/4 v0, 0x3

    if-ne v9, v0, :cond_2

    :cond_0
    move v8, v11

    .line 192
    .local v8, "isIncomingMessage":Z
    :goto_0
    if-eqz v8, :cond_4

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 200
    :cond_1
    :goto_1
    return v11

    .end local v8    # "isIncomingMessage":Z
    :cond_2
    move v8, v10

    .line 189
    goto :goto_0

    .restart local v8    # "isIncomingMessage":Z
    :cond_3
    move v11, v10

    .line 193
    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move v11, v10

    goto :goto_1

    .line 197
    :catch_0
    move-exception v7

    .line 198
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v7}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    move v11, v10

    .line 200
    goto :goto_1
.end method

.method private deleteFromSim([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lcom/android/mms/ui/SmsSelectorActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SmsSelectorActivity$2;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSelectorActivity$2;->start()V

    .line 138
    return-void
.end method

.method private deleteSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "smsids"    # Ljava/lang/String;
    .param p2, "mmsids"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/android/mms/ui/SmsSelectorActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/SmsSelectorActivity$1;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSelectorActivity$1;->start()V

    .line 96
    return-void
.end method

.method private moveToPhone([Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V
    .locals 1
    .param p1, "msgItems"    # [Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    .prologue
    .line 165
    new-instance v0, Lcom/android/mms/ui/SmsSelectorActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SmsSelectorActivity$4;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSelectorActivity$4;->start()V

    .line 180
    return-void
.end method

.method private moveToSim([Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgObj"    # [Ljava/lang/Object;

    .prologue
    .line 141
    new-instance v0, Lcom/android/mms/ui/SmsSelectorActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SmsSelectorActivity$3;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSelectorActivity$3;->start()V

    .line 162
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseSelectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public setDialogParameter(Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "pos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    sparse-switch v14, :sswitch_data_0

    .line 411
    :goto_0
    return-void

    .line 297
    :sswitch_0
    new-instance v14, Lcom/android/mms/ui/SmsSelectorActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/mms/ui/SmsSelectorActivity$6;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 323
    const v14, 0x7f0b01d3

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/mms/ui/SmsSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :sswitch_1
    const/4 v7, 0x0

    .line 327
    .local v7, "lockedCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 328
    .local v6, "len":I
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v12, "smsids":Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    .local v9, "mmsids":Ljava/lang/StringBuffer;
    const/4 v14, 0x2

    new-array v4, v14, [Ljava/lang/String;

    .line 331
    .local v4, "ids":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 332
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v15, v14}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 333
    .local v2, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/ui/BaseSelectorActivity;->isConversationMessage:Z

    if-eqz v14, :cond_2

    .line 334
    const/4 v14, 0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 335
    .local v10, "msgId":J
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 336
    .local v13, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    check-cast v14, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;

    invoke-virtual {v14, v13, v10, v11, v2}, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 337
    .local v5, "item":Lcom/android/mms/ui/MessageItem;
    iget-boolean v14, v5, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v14, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 338
    :cond_0
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :cond_1
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    .end local v5    # "item":Lcom/android/mms/ui/MessageItem;
    .end local v10    # "msgId":J
    .end local v13    # "type":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 352
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    .line 353
    const/4 v14, 0x1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    .line 354
    new-instance v14, Lcom/android/mms/ui/SmsSelectorActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/android/mms/ui/SmsSelectorActivity$7;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 362
    const v14, 0x7f0b01d5

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/mms/ui/SmsSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, "message":Ljava/lang/String;
    if-lez v7, :cond_4

    .line 364
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0b01d6

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/mms/ui/SmsSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 366
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    .end local v3    # "i":I
    .end local v4    # "ids":[Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "lockedCount":I
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "mmsids":Ljava/lang/StringBuffer;
    .end local v12    # "smsids":Ljava/lang/StringBuffer;
    :sswitch_2
    new-instance v14, Lcom/android/mms/ui/SmsSelectorActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/mms/ui/SmsSelectorActivity$8;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 388
    const v14, 0x7f0b01d3

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/mms/ui/SmsSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :sswitch_3
    new-instance v14, Lcom/android/mms/ui/SmsSelectorActivity$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/mms/ui/SmsSelectorActivity$9;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 406
    const v14, 0x7f0b01cd

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/mms/ui/SmsSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->setDialogMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_3
    .end sparse-switch
.end method

.method public setQueryParameter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    packed-switch v0, :pswitch_data_0

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsSelectorActivity;->setSelection(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsSelectorActivity;->setProjection([Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(transport_type = \'sms\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsSelectorActivity;->setSelection(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsSelectorActivity;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "((m_type!=130)OR(transport_type = \'sms\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/SmsSelectorActivity;->sSelection:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsSelectorActivity;->setSelection(Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsSelectorActivity;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
