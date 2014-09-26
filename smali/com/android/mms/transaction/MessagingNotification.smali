.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static mDelayHandler:Landroid/os/Handler;

.field private static mUpdateSendFailedNotification:Landroid/os/Handler;

.field private static sCurrentlyDisplayedThreadId:J

.field private static final sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

.field private static sHandler:Landroid/os/Handler;

.field static sLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;

.field private static sNotificationSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private static sScreenDensity:F

.field private static sToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sub_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 123
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sub_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 137
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 138
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    .line 171
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 203
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sToastHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    .line 217
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    .line 224
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mDelayHandler:Landroid/os/Handler;

    .line 1454
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$5;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$5;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mUpdateSendFailedNotification:Landroid/os/Handler;

    .line 1624
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$7;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$7;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sLocaleReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 104
    sget-wide v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # J

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;[J)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # [J

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mUpdateSendFailedNotification:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;ZI)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZI)V

    return-void
.end method

.method private static final addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 655
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 659
    .local v17, "cursor":Landroid/database/Cursor;
    if-nez v17, :cond_0

    .line 730
    :goto_0
    return-void

    .line 664
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 666
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 667
    .local v22, "msgId":J
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v24

    .line 669
    .local v24, "msgUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 671
    .local v6, "address":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v15

    .line 672
    .local v15, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v15}, Lcom/android/mms/data/Contact;->getSendToVoicemail()Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 679
    .local v8, "subject":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 680
    .local v9, "threadId":J
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v27, 0x3e8

    mul-long v12, v4, v27

    .line 681
    .local v12, "timeMillis":J
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 683
    .local v11, "subId":I
    const-string v2, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMmsNotificationInfos: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :cond_1
    const/4 v14, 0x0

    .line 690
    .local v14, "attachedPicture":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 691
    .local v7, "messageBody":Ljava/lang/String;
    const/16 v16, 0x0

    .line 693
    .local v16, "attachmentType":I
    :try_start_1
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v25

    .line 694
    .local v25, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v2, :cond_3

    .line 695
    check-cast v25, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v25    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v26

    .line 697
    .local v26, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v16

    .line 698
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v19

    .line 699
    .local v19, "firstSlide":Lcom/android/mms/model/SlideModel;
    if-eqz v19, :cond_3

    .line 700
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 701
    const/16 v2, 0x168

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->dp2Pixels(I)I

    move-result v21

    .line 702
    .local v21, "maxDim":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/model/ImageModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 704
    .end local v21    # "maxDim":I
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 713
    .end local v19    # "firstSlide":Lcom/android/mms/model/SlideModel;
    .end local v26    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v4, p0

    :try_start_2
    invoke-static/range {v4 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v20

    .line 723
    .local v20, "info":Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 728
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "threadId":J
    .end local v11    # "subId":I
    .end local v12    # "timeMillis":J
    .end local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .end local v15    # "contact":Lcom/android/mms/data/Contact;
    .end local v16    # "attachmentType":I
    .end local v20    # "info":Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v22    # "msgId":J
    .end local v24    # "msgUri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2

    .line 709
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v7    # "messageBody":Ljava/lang/String;
    .restart local v8    # "subject":Ljava/lang/String;
    .restart local v9    # "threadId":J
    .restart local v11    # "subId":I
    .restart local v12    # "timeMillis":J
    .restart local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .restart local v15    # "contact":Lcom/android/mms/data/Contact;
    .restart local v16    # "attachmentType":I
    .restart local v22    # "msgId":J
    .restart local v24    # "msgUri":Landroid/net/Uri;
    :catch_0
    move-exception v18

    .line 710
    .local v18, "e":Lcom/google/android/mms/MmsException;
    :try_start_3
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmsException loading uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 728
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "threadId":J
    .end local v11    # "subId":I
    .end local v12    # "timeMillis":J
    .end local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .end local v15    # "contact":Lcom/android/mms/data/Contact;
    .end local v16    # "attachmentType":I
    .end local v18    # "e":Lcom/google/android/mms/MmsException;
    .end local v22    # "msgId":J
    .end local v24    # "msgUri":Landroid/net/Uri;
    :cond_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p1, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 863
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(type = 1 AND seen = 0)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 867
    .local v16, "cursor":Landroid/database/Cursor;
    if-nez v16, :cond_0

    .line 906
    :goto_0
    return-void

    .line 872
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 873
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, "address":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 876
    .local v14, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getSendToVoicemail()Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    const/4 v1, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 882
    .local v6, "message":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 883
    .local v8, "threadId":J
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 884
    .local v11, "timeMillis":J
    const/4 v1, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 886
    .local v10, "subId":I
    const-string v1, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    const-string v1, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSmsNotificationInfos: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_1
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v15}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v17

    .line 898
    .local v17, "info":Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 901
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 904
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "threadId":J
    .end local v10    # "subId":I
    .end local v11    # "timeMillis":J
    .end local v14    # "contact":Lcom/android/mms/data/Contact;
    .end local v17    # "info":Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :catchall_0
    move-exception v1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static blockingMarkMessagesAsSeen(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 829
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 830
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "seen"

    aput-object v3, v2, v1

    const-string v3, "seen=0"

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 836
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 838
    .local v6, "count":I
    if-eqz v7, :cond_0

    .line 840
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_0
    if-nez v6, :cond_1

    .line 857
    :goto_0
    return-void

    .line 842
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 850
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 851
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v1, "seen=0"

    invoke-virtual {v0, p1, v8, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 418
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 419
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 420
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 421
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newMsgThreadId"    # J
    .param p3, "isStatusMessage"    # Z

    .prologue
    const/4 v5, 0x1

    .line 330
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "delivery":Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 335
    .local v3, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 336
    .local v0, "count":I
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 337
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 339
    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    monitor-enter v6

    .line 340
    :try_start_0
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 341
    const-string v4, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    const-string v4, "Mms:app"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newMsgThreadId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    const/16 v4, 0x7b

    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 348
    const-wide/16 v7, -0x2

    cmp-long v4, p1, v7

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {p0, v4, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZI)V

    .line 353
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_5

    .line 357
    invoke-virtual {v1, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 367
    :cond_1
    :goto_2
    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v6

    .line 368
    const-wide/16 v7, 0x0

    cmp-long v4, p1, v7

    if-lez v4, :cond_2

    :try_start_1
    sget-wide v7, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    cmp-long v4, p1, v7

    if-nez v4, :cond_2

    .line 374
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mDelayHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 375
    .local v2, "message":Landroid/os/Message;
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 377
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mDelayHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v4, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 382
    .end local v2    # "message":Landroid/os/Message;
    :cond_2
    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 384
    return-void

    .line 348
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 351
    :cond_4
    const/16 v4, 0x7b

    :try_start_2
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_1

    .line 353
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 361
    :cond_5
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {v1, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    goto :goto_2

    .line 379
    .restart local v2    # "message":Landroid/os/Message;
    :cond_6
    :try_start_3
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 382
    .end local v2    # "message":Landroid/os/Message;
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x20

    .line 1277
    invoke-static {p1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1279
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1283
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v2, v2, p4

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1292
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1293
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1298
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1299
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    :cond_2
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1304
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1307
    return-object v2

    .line 1279
    :cond_3
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    .line 938
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 941
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v1, "Mms:app"

    const-string v2, "cancelNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 943
    return-void
.end method

.method private static final dp2Pixels(I)I
    .locals 2
    .param p0, "dip"    # I

    .prologue
    .line 754
    int-to-float v0, p0

    sget v1, Lcom/android/mms/transaction/MessagingNotification;->sScreenDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, "senders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v6, 0x0

    .line 594
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0d000b

    invoke-direct {v2, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 597
    .local v2, "notificationSenderSpan":Landroid/text/style/TextAppearanceSpan;
    const v5, 0x7f0b013c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "separator":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 599
    .local v4, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 600
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 601
    if-lez v0, :cond_0

    .line 602
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 604
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    iget-object v5, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 608
    return-object v4
.end method

.method private static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 5
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 734
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 736
    .local v1, "slideCount":I
    if-nez v1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v2

    .line 738
    :cond_1
    if-le v1, v3, :cond_2

    .line 739
    const/4 v2, 0x4

    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 742
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 743
    goto :goto_0

    .line 744
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 745
    const/4 v2, 0x2

    goto :goto_0

    .line 746
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachmentType"    # I

    .prologue
    const/4 v4, 0x0

    .line 614
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0d000d

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 616
    .local v1, "notificationAttachmentSpan":Landroid/text/style/TextAppearanceSpan;
    const/4 v0, 0x0

    .line 617
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 623
    :goto_0
    if-lez v0, :cond_0

    .line 624
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 625
    .local v2, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 629
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    :goto_1
    return-object v2

    .line 618
    :pswitch_0
    const v0, 0x7f0b0137

    goto :goto_0

    .line 619
    :pswitch_1
    const v0, 0x7f0b0139

    goto :goto_0

    .line 620
    :pswitch_2
    const v0, 0x7f0b0138

    goto :goto_0

    .line 621
    :pswitch_3
    const v0, 0x7f0b013a

    goto :goto_0

    .line 629
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1520
    if-nez v1, :cond_0

    .line 1521
    const/4 v0, 0x0

    .line 1525
    :goto_0
    return v0

    .line 1523
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getMmsDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 788
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v4

    const-string v4, "(msg_box=1 AND seen=0 AND m_type=134)"

    const-string v6, "date"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 791
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 799
    :goto_0
    return-object v5

    .line 794
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 799
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 797
    .local v8, "msgId":J
    invoke-static {p0, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryInfo(Landroid/content/Context;J)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 799
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "msgId":J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getMmsDeliveryInfo(Landroid/content/Context;J)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mMsgId"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 804
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 806
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    const-string v0, "address"

    aput-object v0, v3, v4

    const-string v4, "delivery_status = 129"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 809
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 824
    :goto_0
    return-object v5

    .line 813
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 824
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 815
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 816
    .local v7, "address":Ljava/lang/String;
    const-wide/16 v9, 0xbb8

    .line 817
    .local v9, "timeMillis":J
    sget-object v0, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingMarkMessagesAsSeen(Landroid/content/Context;Landroid/net/Uri;)V

    .line 819
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v9, v10}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "address":Ljava/lang/String;
    .end local v9    # "timeMillis":J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSms"    # Z
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "threadId"    # J
    .param p7, "subId"    # I
    .param p8, "timeMillis"    # J
    .param p10, "attachmentBitmap"    # Landroid/graphics/Bitmap;
    .param p11, "contact"    # Lcom/android/mms/data/Contact;
    .param p12, "attachmentType"    # I

    .prologue
    .line 920
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v7

    .line 921
    .local v7, "clickIntent":Landroid/content/Intent;
    const/high16 v5, 0x34000000

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 925
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p7

    invoke-static {v0, v1, v5, v6, v2}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 927
    .local v20, "senderInfo":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 929
    .local v13, "senderInfoName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 932
    .local v10, "ticker":Ljava/lang/CharSequence;
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v11, p8

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    move-wide/from16 v17, p5

    move/from16 v19, p7

    invoke-direct/range {v5 .. v19}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJI)V

    return-object v5
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 758
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 759
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date_sent"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 763
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 782
    :goto_0
    return-object v5

    .line 768
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 782
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 772
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, "address":Ljava/lang/String;
    const-wide/16 v11, 0xbb8

    .line 775
    .local v11, "timeMillis":J
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    .line 776
    .local v8, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v10

    .line 778
    .local v10, "name":Ljava/lang/String;
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0b00e6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "contact":Lcom/android/mms/data/Contact;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "timeMillis":J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 9

    .prologue
    const-wide/16 v7, -0x2

    const/4 v4, 0x0

    .line 1549
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1558
    if-nez v2, :cond_0

    move-wide v0, v7

    .line 1572
    :goto_0
    return-wide v0

    .line 1566
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1567
    const-string v0, "thread_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1572
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 9

    .prologue
    const-wide/16 v7, -0x2

    const/4 v4, 0x0

    .line 1583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1592
    if-nez v2, :cond_1

    move-wide v0, v7

    .line 1616
    :cond_0
    :goto_0
    return-wide v0

    .line 1600
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1601
    const-string v0, "thread_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1615
    if-eqz v2, :cond_0

    .line 1616
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1615
    :cond_2
    if-eqz v2, :cond_3

    .line 1616
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v7

    goto :goto_0

    .line 1615
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 1616
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1428
    if-nez v3, :cond_0

    move v0, v7

    .line 1451
    :goto_0
    return v0

    .line 1431
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1433
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1434
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p1, v1

    .line 1436
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 1438
    const/4 v1, 0x0

    aget-wide v1, p1, v1

    .line 1439
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1440
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_1

    .line 1441
    const-wide/16 v1, 0x0

    .line 1445
    :cond_2
    const/4 v4, 0x1

    aput-wide v1, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v1, "intentLocaleChangedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 257
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->sScreenDensity:F

    .line 260
    return-void
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1535
    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1539
    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newMsgThreadId"    # J
    .param p3, "isStatusMessage"    # Z

    .prologue
    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;JZ)V

    const-string v2, "MessagingNotification.nonBlockingUpdateNewMessageIndicator"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    return-void
.end method

.method public static nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1469
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$6;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/MessagingNotification$6;-><init>(Landroid/content/Context;)V

    const-string v2, "MessagingNotification.nonBlockingUpdateSendFailedNotification worker thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1494
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 1316
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1317
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 9

    .prologue
    .line 1330
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1331
    if-nez v0, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [J

    fill-array-data v3, :array_0

    .line 1343
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    .line 1344
    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    .line 1351
    :cond_2
    const/4 v0, 0x1

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    if-eqz p1, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 1354
    :goto_1
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1357
    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 1358
    const v2, 0x7f0b00e9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1360
    const v2, 0x7f0b00ea

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1369
    :goto_2
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 1370
    if-eqz v0, :cond_a

    .line 1371
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1372
    if-eqz p1, :cond_9

    .line 1374
    const-string v3, "failed_download_flag"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1379
    :goto_3
    const-string v3, "thread_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1380
    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v5, v3}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 1384
    :goto_4
    invoke-virtual {v5, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1386
    const v0, 0x7f0200a2

    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 1388
    iput-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1390
    const/4 v0, 0x0

    const/high16 v3, 0x8000000

    invoke-virtual {v5, v0, v3}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1393
    if-eqz p4, :cond_5

    .line 1394
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1395
    const-string v1, "pref_key_vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1397
    if-eqz v1, :cond_4

    .line 1398
    iget v1, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->defaults:I

    .line 1401
    :cond_4
    const-string v1, "pref_key_ringtone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :goto_5
    iput-object v0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1406
    :cond_5
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1409
    if-eqz p1, :cond_c

    .line 1410
    const/16 v1, 0x213

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1351
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1362
    :cond_7
    if-eqz p1, :cond_8

    const v1, 0x7f0b00ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1366
    :goto_6
    const v2, 0x7f0b0101

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    .line 1362
    :cond_8
    const v1, 0x7f0b0100

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1376
    :cond_9
    const/4 v6, 0x0

    aget-wide p2, v3, v6

    .line 1377
    const-string v3, "undelivered_flag"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 1382
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    .line 1403
    :cond_b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    .line 1412
    :cond_c
    const/16 v1, 0x315

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1342
    nop

    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1320
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1321
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noisy"    # Z

    .prologue
    .line 1324
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1325
    return-void
.end method

.method public static setCurrentlyDisplayedThreadId(J)V
    .locals 2
    .param p0, "threadId"    # J

    .prologue
    .line 272
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isStatusMessage"    # Z
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "timeMillis"    # J

    .prologue
    .line 949
    if-nez p1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$4;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$4;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1529
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1530
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1532
    :cond_0
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;ZI)V
    .locals 11

    .prologue
    .line 978
    const-string v0, "Mms:app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification is new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uniqueThreadCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 992
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    .line 993
    const-string v0, "Mms:app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    if-nez v0, :cond_1

    .line 1001
    const-string v1, "Mms:app"

    const-string v2, "mostRecentNotification is null"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v2, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1007
    if-eqz p1, :cond_2

    .line 1008
    iget-object v1, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1010
    :cond_2
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v7

    .line 1022
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1024
    const/4 v2, 0x0

    .line 1027
    const/4 v1, 0x1

    if-le p2, v1, :cond_a

    .line 1028
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    invoke-virtual {v7, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1036
    const v3, 0x7f0b0132

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    .line 1070
    :goto_1
    iget-boolean v1, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    if-eqz v1, :cond_d

    const v1, 0x7f0200a1

    :goto_2
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1072
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1076
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 1077
    if-eqz v8, :cond_e

    .line 1078
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {p0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1085
    :goto_3
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "android.message"

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1091
    const/4 v4, 0x0

    .line 1093
    if-eqz p1, :cond_9

    .line 1094
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1096
    const-string v2, "pref_key_vibrateWhen"

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1097
    const-string v2, "pref_key_vibrateWhen"

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    :goto_4
    const-string v8, "always"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1109
    const-string v9, "silent"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1110
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1112
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_12

    const/4 v2, 0x1

    .line 1115
    :goto_5
    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    if-eqz v2, :cond_4

    .line 1116
    :cond_3
    const/4 v2, 0x2

    move v4, v2

    .line 1119
    :cond_4
    const-string v2, "pref_key_ringtone"

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1122
    if-eqz v2, :cond_6

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1123
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1124
    if-eqz v2, :cond_13

    .line 1125
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    .line 1126
    if-nez v7, :cond_5

    .line 1127
    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1132
    :cond_5
    :goto_6
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1136
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1138
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 1139
    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1140
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1141
    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1150
    :cond_7
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 1153
    :cond_8
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 1154
    const-wide/16 v7, 0x64

    invoke-virtual {v2, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1155
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1156
    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1161
    :cond_9
    or-int/lit8 v2, v4, 0x4

    .line 1163
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1166
    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-static {p0, v2, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1171
    const/4 v2, 0x1

    if-ne v5, v2, :cond_14

    .line 1175
    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1187
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1272
    :goto_7
    const/16 v2, 0x7b

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    const-string v1, "Mms:app"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1040
    :cond_a
    iget-object v3, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 1041
    iget-object v1, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    const/4 v8, 0x0

    invoke-virtual {v1, p0, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1043
    if-eqz v1, :cond_1c

    .line 1046
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1047
    if-eqz v1, :cond_c

    .line 1048
    const v2, 0x1050006

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1050
    const v8, 0x1050005

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1052
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v8, v2, :cond_b

    .line 1054
    const/4 v8, 0x1

    invoke-static {v1, v4, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1057
    :cond_b
    if-eqz v1, :cond_c

    .line 1058
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1063
    :cond_c
    :goto_8
    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v7, v2}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 1064
    iget-object v2, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    invoke-virtual {v7, v2}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1066
    iget-object v2, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_1

    .line 1070
    :cond_d
    const v1, 0x7f0200a0

    goto/16 :goto_2

    .line 1080
    :cond_e
    const/4 v2, 0x0

    const/high16 v8, 0x8000000

    invoke-virtual {v7, v2, v8}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    goto/16 :goto_3

    .line 1099
    :cond_f
    const-string v2, "pref_key_vibrate"

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1100
    const-string v2, "pref_key_vibrate"

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, 0x7f0b00a0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_10
    const v2, 0x7f0b00a1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 1105
    :cond_11
    const v2, 0x7f0b009e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 1112
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1130
    :cond_13
    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_6

    .line 1196
    :cond_14
    const/4 v0, 0x1

    if-ne p2, v0, :cond_18

    .line 1200
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1201
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1203
    array-length v2, v0

    .line 1204
    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_16

    .line 1205
    aget-object v7, v0, v2

    .line 1207
    invoke-virtual {v7, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1209
    if-eqz v2, :cond_15

    .line 1210
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1204
    :cond_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1214
    :cond_16
    const v0, 0x7f0b0132

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1218
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    if-nez v3, :cond_17

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_7

    :cond_17
    const-string v0, " "

    goto :goto_a

    .line 1229
    :cond_18
    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1233
    :cond_19
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1235
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1236
    iget-wide v7, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 1237
    iget-wide v7, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    .line 1240
    :catch_1
    move-exception v0

    .line 1241
    const-string v5, "Mms:app"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1247
    :cond_1a
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1248
    new-instance v4, Landroid/app/Notification$InboxStyle;

    invoke-direct {v4, v6}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1252
    const-string v0, " "

    invoke-virtual {v4, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1257
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1258
    const/16 v2, 0x8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1260
    const/4 v0, 0x0

    move v2, v0

    :goto_c
    if-ge v2, v5, :cond_1b

    .line 1261
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1262
    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1260
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 1264
    :cond_1b
    invoke-virtual {v4}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_7

    :cond_1c
    move-object v1, v2

    goto/16 :goto_8
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 1500
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 1501
    .local v0, "msgThreadId":[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1504
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1506
    :cond_0
    return-void

    .line 1500
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
