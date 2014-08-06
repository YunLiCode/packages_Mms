.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;,
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private isSimMessage:Z

.field private final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsGroupConversation:Z

.field private final mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sub_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "text_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "useDefaultColumnsMap"    # Z
    .param p5, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 147
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->isSimMessage:Z

    .line 148
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 149
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    .line 155
    if-eqz p4, :cond_0

    .line 156
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 161
    :goto_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 171
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private getItemViewType(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 314
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "type":Ljava/lang/String;
    const-string v3, "sms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 319
    .local v0, "boxId":I
    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 325
    :cond_1
    :goto_0
    return v2

    .line 323
    .end local v0    # "boxId":I
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 325
    .restart local v0    # "boxId":I
    if-eq v0, v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 281
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    neg-long p1, p1

    .line 284
    .end local p1    # "id":J
    :cond_0
    return-wide p1
.end method

.method private getMmsDate(Landroid/database/Cursor;)J
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v11, 0x3e8

    .line 562
    const-wide/16 v1, 0x0

    .line 563
    .local v1, "date":J
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    .line 564
    .local v0, "context":Landroid/content/Context;
    const/16 v9, 0x12

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 565
    .local v7, "type":I
    const/16 v9, 0x82

    if-ne v7, v9, :cond_0

    .line 566
    const/16 v9, 0xf

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 567
    mul-long v9, v1, v11

    .line 582
    :goto_0
    return-wide v9

    .line 570
    :cond_0
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 571
    .local v4, "id":J
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 575
    .local v8, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 577
    .local v6, "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    mul-long v1, v9, v11

    .end local v6    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_1
    move-wide v9, v1

    .line 582
    goto :goto_0

    .line 578
    :catch_0
    move-exception v3

    .line 579
    .local v3, "e":Lcom/google/android/mms/MmsException;
    const-string v9, "MessageListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load the message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMessageItemShowTimeDivider(Landroid/database/Cursor;)Z
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 585
    if-nez p1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v4

    .line 588
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 591
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v4, v5, :cond_3

    :cond_2
    move v4, v5

    .line 592
    goto :goto_0

    .line 594
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 595
    .local v0, "currentMessageTime":J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 597
    .local v2, "previousMessageTime":J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 598
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->isNewDay(JJ)Z

    move-result v4

    goto :goto_0
.end method

.method private isNewDay(JJ)Z
    .locals 6
    .param p1, "date1"    # J
    .param p3, "date2"    # J

    .prologue
    .line 548
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 549
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 550
    .local v0, "currentDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 551
    .local v1, "lastDate":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "s1":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "s2":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 555
    const/4 v5, 0x1

    .line 557
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 175
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/mms/ui/MessageListItem;

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 179
    .local v12, "msgId":J
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getMessageTimeByCursor(Landroid/database/Cursor;)J

    move-result-wide v8

    .line 180
    .local v8, "date":J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 181
    .local v4, "position":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 182
    .local v7, "count":I
    move-object/from16 v0, p3

    invoke-virtual {p0, v14, v12, v13, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    .line 184
    .local v2, "msgItem":Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->isMessageItemShowTimeDivider(Landroid/database/Cursor;)Z

    move-result v11

    .line 186
    .local v11, "isShowTimeDivider":Z
    if-eqz v2, :cond_0

    move-object/from16 v1, p1

    .line 187
    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    .line 188
    .local v1, "mli":Lcom/android/mms/ui/MessageListItem;
    add-int/lit8 v3, v7, -0x1

    if-ne v4, v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListAdapter;->isSimMessage:Z

    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;ZIZZ)V

    .line 189
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 191
    .local v10, "isPopStyle":Z
    if-eqz v10, :cond_0

    .line 192
    invoke-virtual {v1, v11, v8, v9}, Lcom/android/mms/ui/MessageListItem;->showDateLable(ZJ)V

    .line 197
    .end local v1    # "mli":Lcom/android/mms/ui/MessageListItem;
    .end local v2    # "msgItem":Lcom/android/mms/ui/MessageItem;
    .end local v4    # "position":I
    .end local v7    # "count":I
    .end local v8    # "date":J
    .end local v10    # "isPopStyle":Z
    .end local v11    # "isShowTimeDivider":Z
    .end local v12    # "msgId":J
    .end local v14    # "type":Ljava/lang/String;
    :cond_0
    return-void

    .line 188
    .restart local v1    # "mli":Lcom/android/mms/ui/MessageListItem;
    .restart local v2    # "msgItem":Lcom/android/mms/ui/MessageItem;
    .restart local v4    # "position":I
    .restart local v7    # "count":I
    .restart local v8    # "date":J
    .restart local v11    # "isShowTimeDivider":Z
    .restart local v12    # "msgId":J
    .restart local v14    # "type":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cancelBackgroundLoading()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->evictAll()V

    .line 220
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MessageItem;

    .line 261
    .local v7, "item":Lcom/android/mms/ui/MessageItem;
    if-nez v7, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v7    # "item":Lcom/android/mms/ui/MessageItem;
    .local v0, "item":Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :goto_0
    return-object v0

    .line 265
    .end local v0    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v7    # "item":Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 266
    .end local v7    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v0    # "item":Lcom/android/mms/ui/MessageItem;
    .local v6, "e":Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "MessageListAdapter"

    const-string v2, "getCachedMessageItem: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v7    # "item":Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v7

    .end local v7    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v0    # "item":Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCursorForItem(Lcom/android/mms/ui/MessageItem;)Landroid/database/Cursor;
    .locals 6
    .param p1, "item"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 332
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    :cond_0
    iget v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mRowIDColumn:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 336
    .local v1, "id":J
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "type":Ljava/lang/String;
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "id":J
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 340
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "id":J
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    .end local v1    # "id":J
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 310
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v1

    return v1
.end method

.method getMessageTimeByCursor(Landroid/database/Cursor;)J
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 602
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 603
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 605
    .local v2, "msgId":J
    const-wide/16 v0, 0x0

    .line 606
    .local v0, "date":J
    const-string v5, "sms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 607
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 611
    :goto_0
    return-wide v0

    .line 609
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getMmsDate(Landroid/database/Cursor;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x4

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 247
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v0

    .line 248
    .local v0, "boxType":I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_3

    :cond_0
    const v2, 0x7f040015

    :goto_0
    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, "view":Landroid/view/View;
    if-eq v0, v5, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 254
    :cond_1
    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_2
    return-object v1

    .line 248
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    const v2, 0x7f040016

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->evictAll()V

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 234
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setGroup(Z)V
    .locals 0
    .param p1, "isGroup"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    .line 143
    return-void
.end method

.method public setIsGroupConversation(Z)V
    .locals 0
    .param p1, "isGroup"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    .line 214
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 210
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 206
    return-void
.end method

.method public setSimMessage(Z)V
    .locals 0
    .param p1, "isSimMessage"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->isSimMessage:Z

    .line 140
    return-void
.end method
