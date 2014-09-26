.class public Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;
.super Ljava/lang/Object;
.source "MessageItem.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PduLoadedMessageItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 341
    if-eqz p2, :cond_1

    .line 342
    # getter for: Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PduLoadedMessageItemCallback PDU couldn\'t be loaded: "

    move-object/from16 v0, p2

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v13}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v13}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v14

    monitor-enter v14

    .line 347
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v13}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v13

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V

    .line 348
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object/from16 v5, p1

    .line 350
    check-cast v5, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    .line 351
    .local v5, "pduLoaded":Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    const-wide/16 v10, 0x0

    .line 352
    .local v10, "timestamp":J
    const/16 v13, 0x82

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v14, v14, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v13, v14, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v14, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 354
    iget-object v4, v5, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    .line 355
    .local v4, "notifInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    new-instance v14, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v14

    long-to-int v14, v14

    iput v14, v13, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 359
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v10, v13, v15

    .line 426
    .end local v4    # "notifInd":Lcom/google/android/mms/pdu/NotificationInd;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v13

    if-nez v13, :cond_3

    .line 427
    const/16 v13, 0x82

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v14, v14, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v13, v14, :cond_11

    .line 428
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0017

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 441
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    invoke-static {v13}, Lcom/android/mms/ui/MessageItem;->access$300(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    invoke-static {v13}, Lcom/android/mms/ui/MessageItem;->access$300(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-interface {v13, v14}, Lcom/android/mms/ui/MessageItem$PduLoadedCallback;->onPduLoaded(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_0

    .line 348
    .end local v5    # "pduLoaded":Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    .end local v10    # "timestamp":J
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 361
    .restart local v5    # "pduLoaded":Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    .restart local v10    # "timestamp":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 364
    iget-object v2, v5, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 365
    .local v2, "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v5, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v14

    iput v14, v13, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v13, v13, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v14, 0x84

    if-ne v13, v14, :cond_9

    .line 369
    if-nez v2, :cond_8

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 383
    .end local v2    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v13, :cond_b

    const/4 v9, 0x0

    .line 384
    .local v9, "slide":Lcom/android/mms/model/SlideModel;
    :goto_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 385
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v12

    .line 386
    .local v12, "tm":Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v12}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v12}, Lcom/android/mms/model/TextModel;->getContentType()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 390
    .end local v12    # "tm":Lcom/android/mms/model/TextModel;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v13, :cond_c

    const/4 v13, 0x0

    :goto_5
    iput v13, v14, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "report":Ljava/lang/String;
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0011

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 395
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v14, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 411
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 412
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0011

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 414
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_1

    .end local v6    # "report":Ljava/lang/String;
    .end local v9    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v2    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_8
    move-object v8, v2

    .line 372
    check-cast v8, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 373
    .local v8, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 374
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v10, v13, v15

    .line 375
    goto/16 :goto_3

    .line 378
    .end local v8    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v15, v15, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v14 .. v18}, Lcom/android/mms/ui/MessageItem;->getMmsAddress(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0011

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 380
    if-nez v2, :cond_a

    const-wide/16 v10, 0x0

    .end local v2    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_7
    goto/16 :goto_3

    .restart local v2    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_a
    check-cast v2, Lcom/google/android/mms/pdu/SendReq;

    .end local v2    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v10, v13, v15

    goto :goto_7

    .line 383
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    goto/16 :goto_4

    .line 390
    .restart local v9    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v13}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v13

    goto/16 :goto_5

    .line 399
    .restart local v6    # "report":Ljava/lang/String;
    :cond_d
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 400
    .local v7, "reportInt":I
    const/16 v13, 0x80

    if-ne v7, v13, :cond_e

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v14, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 405
    .end local v7    # "reportInt":I
    :catch_0
    move-exception v3

    .line 406
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Value for delivery report was invalid."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v14, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_6

    .line 403
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v7    # "reportInt":I
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v14, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 418
    .end local v7    # "reportInt":I
    :cond_f
    :try_start_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 419
    .restart local v7    # "reportInt":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/16 v13, 0x80

    if-ne v7, v13, :cond_10

    const/4 v13, 0x1

    :goto_8
    iput-boolean v13, v14, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 420
    .end local v7    # "reportInt":I
    :catch_1
    move-exception v3

    .line 421
    .restart local v3    # "nfe":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Value for read report was invalid."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_1

    .line 419
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v7    # "reportInt":I
    :cond_10
    const/4 v13, 0x0

    goto :goto_8

    .line 432
    .end local v6    # "report":Ljava/lang/String;
    .end local v7    # "reportInt":I
    .end local v9    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v13, v13, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_12

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0016

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    .line 436
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0018

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2
.end method
