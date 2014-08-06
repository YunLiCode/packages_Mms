.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$PduLoadedCallback;,
        Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;,
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    }
.end annotation


# static fields
.field public static ATTACHMENT_TYPE_NOT_LOADED:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field final mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mDate:J

.field mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mHighlight:Ljava/util/regex/Pattern;

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field mLastSendingState:Z

.field mLocked:Z

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field mMmsStatus:I

.field final mMsgId:J

.field private mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

.field mReadReport:Z

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field mSubscription:I

.field mTextContentType:Ljava/lang/String;

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "columnsMap"    # Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .param p5, "highlight"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 116
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 117
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 118
    iput-object p2, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    .line 120
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 122
    const-string v7, "sms"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 123
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 125
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 126
    .local v3, "status":J
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_2

    .line 128
    sget-object v7, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 140
    :goto_0
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 142
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 143
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 144
    iget v7, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v7}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    const v7, 0x7f0b0011

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "meString":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 153
    .end local v2    # "meString":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSubId:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v7

    if-nez v7, :cond_1

    .line 158
    iget v7, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 160
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 162
    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 165
    :cond_0
    const v7, 0x7f0b0016

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    invoke-static {p1, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 179
    :cond_1
    :goto_2
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 180
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 219
    .end local v3    # "status":J
    :goto_4
    return-void

    .line 129
    .restart local v3    # "status":J
    :cond_2
    const-wide/16 v7, 0x40

    cmp-long v7, v3, v7

    if-ltz v7, :cond_3

    .line 131
    sget-object v7, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 132
    :cond_3
    const-wide/16 v7, 0x20

    cmp-long v7, v3, v7

    if-ltz v7, :cond_4

    .line 134
    sget-object v7, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 137
    :cond_4
    sget-object v7, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 151
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_1

    .line 169
    :cond_6
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 171
    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 174
    :cond_7
    const v7, 0x7f0b0018

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    invoke-static {p1, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto :goto_2

    .line 179
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 181
    .end local v3    # "status":J
    :cond_9
    const-string v7, "mms"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 182
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 183
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 184
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 185
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 186
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "subject":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSubId:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mSubscription:I

    .line 189
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 190
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 193
    .local v6, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 195
    .end local v6    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    :goto_5
    iput-boolean v7, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 196
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 197
    sget-object v7, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 198
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 199
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 200
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 201
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 203
    const-string v7, ""

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsStatus:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mMmsStatus:I

    .line 205
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTextOnly:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    :goto_6
    iput v7, p0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 210
    iget v7, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v8, 0x82

    if-eq v7, v8, :cond_d

    const/4 v1, 0x1

    .line 212
    .local v1, "loadSlideshow":Z
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    new-instance v9, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;-><init>(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/mms/util/PduLoaderManager;->getPdu(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    goto/16 :goto_4

    .line 195
    .end local v1    # "loadSlideshow":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 205
    :cond_c
    sget v7, Lcom/android/mms/ui/MessageItem;->ATTACHMENT_TYPE_NOT_LOADED:I

    goto :goto_6

    .line 210
    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    .line 217
    .end local v5    # "subject":Ljava/lang/String;
    :cond_e
    new-instance v7, Lcom/google/android/mms/MmsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type of the message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageItem;
    .param p1, "x1"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    return-object v0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .param p1, "from"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 239
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public cancelPduLoading()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    invoke-interface {v0}, Lcom/android/mms/util/ItemLoadedFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPduLoading for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/mms/util/ItemLoadedFuture;->cancel(Landroid/net/Uri;)V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 459
    :cond_1
    return-void
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 308
    .local v0, "isSending":Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 309
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getMmsAddress(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "boxId"    # I
    .param p3, "msgId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 475
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/addr"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    .local v1, "addrUri":Landroid/net/Uri;
    const-string v3, ""

    .line 477
    .local v3, "selection":Ljava/lang/String;
    if-ne p2, v8, :cond_0

    .line 478
    const-string v3, "type = 137"

    .line 482
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "address"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 483
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 485
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 490
    .local v6, "address":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 493
    .end local v6    # "address":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 480
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v3, "type = 151"

    goto :goto_0

    .line 490
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v6, v4

    .line 493
    goto :goto_1

    .line 490
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMmsDownloadStatus()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMmsStatus:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 292
    .local v0, "isFailedMms":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 294
    .local v1, "isFailedSms":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "isFailedMms":Z
    .end local v1    # "isFailedSms":Z
    :cond_2
    move v0, v3

    .line 290
    goto :goto_0

    .restart local v0    # "isFailedMms":Z
    :cond_3
    move v1, v3

    .line 292
    goto :goto_1
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v6, :cond_3

    move v0, v2

    .line 278
    .local v0, "isOutgoingMms":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    :cond_0
    move v1, v2

    .line 282
    .local v1, "isOutgoingSms":Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .end local v0    # "isOutgoingMms":Z
    .end local v1    # "isOutgoingSms":Z
    :cond_3
    move v0, v3

    .line 277
    goto :goto_0

    .restart local v0    # "isOutgoingMms":Z
    :cond_4
    move v1, v3

    .line 278
    goto :goto_1
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "formattedMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 304
    return-void
.end method

.method public setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V
    .locals 0
    .param p1, "pduLoadedCallback"    # Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    .line 449
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
