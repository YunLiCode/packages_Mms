.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final SMS_BODY_PROJECTION:[Ljava/lang/String;

.field private static sMmsEnabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAddingStatus:Z

.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCurrentConvSub:I

.field private mDiscarded:Z

.field private volatile mHasMmsDraft:Z

.field private volatile mHasSmsDraft:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field private mResendMultiRecipients:Z

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mWorkingRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingRecipientsToCc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 173
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "m_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 1690
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v3

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 1885
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mAddingStatus:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipientsToCc:Ljava/util/List;

    .line 237
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 238
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 239
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 240
    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 242
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/mms/ui/DialogModeActivity;

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mAddingStatus:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipientsToCc:Ljava/util/List;

    .line 254
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 255
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 256
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 257
    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Lcom/android/mms/data/Conversation;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/mms/pdu/PduPersister;
    .param p1, "x1"    # Lcom/google/android/mms/pdu/SendReq;
    .param p2, "x2"    # Lcom/android/mms/model/SlideshowModel;
    .param p3, "x3"    # Landroid/net/Uri;
    .param p4, "x4"    # Landroid/content/Context;
    .param p5, "x5"    # Ljava/util/HashMap;

    .prologue
    .line 93
    invoke-static/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Lcom/google/android/mms/pdu/PduPersister;
    .param p2, "x2"    # Lcom/android/mms/model/SlideshowModel;
    .param p3, "x3"    # Lcom/google/android/mms/pdu/SendReq;
    .param p4, "x4"    # Ljava/util/HashMap;

    .prologue
    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Lcom/android/mms/data/Conversation;
    .param p2, "x2"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->ensureThreadIdIfNeeded(Lcom/android/mms/data/Conversation;Z)V

    return-void
.end method

.method static synthetic access$1500(Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->closePreOpenedFiles(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Lcom/android/mms/data/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/mms/data/Conversation;
    .param p2, "x2"    # Ljava/lang/StringBuilder;

    .prologue
    .line 93
    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/data/WorkingMessage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/mms/data/WorkingMessage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/Conversation;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Lcom/android/mms/data/Conversation;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Lcom/google/android/mms/pdu/PduPersister;
    .param p4, "x4"    # Lcom/android/mms/model/SlideshowModel;
    .param p5, "x5"    # Lcom/google/android/mms/pdu/SendReq;
    .param p6, "x6"    # Z

    .prologue
    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Lcom/android/mms/data/Conversation;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;
    .param p1, "x1"    # Lcom/android/mms/data/Conversation;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/WorkingMessage;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1421
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1422
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 1423
    array-length v4, v3

    move v2, v1

    .line 1424
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1425
    aget-object v5, v3, v2

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v3, v2

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1426
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1427
    invoke-static {v5, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v5

    .line 1428
    aget v5, v5, v1

    if-le v5, v0, :cond_1

    .line 1429
    invoke-direct {p0, v0, v0, v0}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1430
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1431
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 1437
    :goto_1
    return v0

    .line 1424
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1437
    goto :goto_1
.end method

.method private appendMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "slideShowEditor"    # Lcom/android/mms/ui/SlideshowEditor;

    .prologue
    const/4 v8, 0x3

    .line 700
    const/4 v2, 0x0

    .line 703
    .local v2, "result":I
    if-nez p1, :cond_0

    move v3, v2

    .line 752
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 712
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    const/4 v1, 0x1

    .line 713
    .local v1, "addNewSlide":Z
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v6

    if-nez v6, :cond_1

    .line 714
    const/4 v1, 0x0

    .line 717
    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-ne v8, v6, :cond_2

    if-ne v8, p1, :cond_2

    .line 718
    const/4 v1, 0x1

    .line 722
    :cond_2
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 723
    .local v0, "Slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 724
    const/4 v1, 0x1

    .line 726
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v8, p1, :cond_4

    .line 727
    const/4 v1, 0x0

    .line 730
    :cond_4
    if-eqz v1, :cond_5

    .line 731
    invoke-virtual {p3}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v2

    .line 732
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 735
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_5
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 736
    .local v4, "slideNum":I
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/android/mms/data/WorkingMessage;->internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I

    move-result v2

    .line 739
    if-eqz v2, :cond_6

    .line 744
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 745
    .local v5, "sm":Lcom/android/mms/model/SlideModel;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 746
    const-string v6, "WorkingMessage"

    const-string v7, "slide has audio keep it!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "sm":Lcom/android/mms/model/SlideModel;
    :cond_6
    :goto_1
    move v3, v2

    .line 752
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 748
    .end local v3    # "result":I
    .restart local v2    # "result":I
    .restart local v5    # "sm":Lcom/android/mms/model/SlideModel;
    :cond_7
    invoke-virtual {p3, v4}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_1
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 1993
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1994
    const-string v0, "asyncDelete %s where %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1996
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "WorkingMessage.asyncDelete"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2002
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 5

    .prologue
    .line 2026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 2028
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2032
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2033
    return-void

    .line 2031
    :cond_0
    const-string v0, " IS NULL"

    goto :goto_0
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1804
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    const-string v0, "asyncUpdateDraftMmsMessage conv=%s mMessageUri=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->openPartFiles(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 1810
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$4;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/util/HashMap;Z)V

    const-string v0, "WorkingMessage.asyncUpdateDraftMmsMessage"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1842
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 1951
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;ZLjava/lang/String;)V

    const-string v2, "WorkingMessage.asyncUpdateDraftSmsMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1970
    return-void
.end method

.method private cancelThumbnailLoading()V
    .locals 4

    .prologue
    .line 620
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 621
    .local v1, "numSlides":I
    :goto_0
    if-lez v1, :cond_0

    .line 622
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 623
    .local v0, "imgModel":Lcom/android/mms/model/ImageModel;
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->cancelThumbnailLoading()V

    .line 627
    .end local v0    # "imgModel":Lcom/android/mms/model/ImageModel;
    :cond_0
    return-void

    .line 620
    .end local v1    # "numSlides":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "slideShowEditor"    # Lcom/android/mms/ui/SlideshowEditor;

    .prologue
    const/4 v6, 0x0

    .line 660
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 661
    .local v1, "originalSlide":Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p3, v6}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 664
    :cond_0
    invoke-virtual {p3, v6}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    .line 665
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 666
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 667
    .local v2, "result":I
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 669
    .local v0, "originalAttachmentType":I
    if-nez v4, :cond_1

    .line 670
    const-string v5, "Mms"

    const-string v6, "[WorkingMessage] changeMedia: no slides!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 693
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 678
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_1
    iput v6, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 681
    if-eqz p1, :cond_2

    const/4 v5, 0x6

    if-ne p1, v5, :cond_3

    :cond_2
    move v3, v2

    .line 682
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 685
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_3
    invoke-direct {p0, p1, p2, v6, p3}, Lcom/android/mms/data/WorkingMessage;->internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I

    move-result v2

    .line 686
    if-eqz v2, :cond_4

    .line 687
    invoke-virtual {p3, v6}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 688
    if-eqz v1, :cond_4

    .line 689
    invoke-virtual {p3, v6, v1}, Lcom/android/mms/ui/SlideshowEditor;->addSlide(ILcom/android/mms/model/SlideModel;)Z

    .line 690
    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    :cond_4
    move v3, v2

    .line 693
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0
.end method

.method private static closePreOpenedFiles(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1869
    .local p0, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p0, :cond_1

    .line 1882
    :cond_0
    return-void

    .line 1872
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1873
    .local v3, "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1874
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 1875
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 1877
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1878
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private correctAttachmentState()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 296
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v3, :cond_1

    move v1, v2

    .line 300
    .local v1, "slideCount":I
    :goto_0
    if-nez v1, :cond_2

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 325
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    invoke-direct {p0, v5, v3, v2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 326
    return-void

    .line 296
    .end local v1    # "slideCount":I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    goto :goto_0

    .line 302
    .restart local v1    # "slideCount":I
    :cond_2
    if-le v1, v4, :cond_3

    .line 303
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_1

    .line 305
    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->hasOtherAttachModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    const-string v3, "Trace"

    const-string v4, "workingmsg correctAttachmentState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->hasVCalendar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_1

    .line 311
    :cond_4
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 312
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_1

    .line 314
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 315
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_1

    .line 316
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 317
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_1

    .line 318
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 319
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_1

    .line 321
    :cond_8
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_1
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;
    .locals 10
    .param p0, "persister"    # Lcom/google/android/mms/pdu/PduPersister;
    .param p1, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .param p3, "preUri"    # Landroid/net/Uri;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPersister;",
            "Lcom/google/android/mms/pdu/SendReq;",
            "Lcom/android/mms/model/SlideshowModel;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v9, 0x0

    .line 1784
    if-nez p2, :cond_0

    move-object v8, v9

    .line 1799
    :goto_0
    return-object v8

    .line 1788
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    .line 1789
    .local v7, "pb":Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {p1, v7}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1790
    if-nez p3, :cond_1

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    :goto_1
    const/4 v3, 0x1

    invoke-static {p4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v8

    .line 1793
    .local v8, "res":Landroid/net/Uri;
    invoke-virtual {p2, v7}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1795
    .end local v7    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .end local v8    # "res":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .local v6, "e":Lcom/google/android/mms/MmsException;
    move-object v8, v9

    .line 1796
    goto :goto_0

    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    .restart local v7    # "pb":Lcom/google/android/mms/pdu/PduBody;
    :cond_1
    move-object v2, p3

    .line 1790
    goto :goto_1

    .line 1798
    .end local v7    # "pb":Lcom/google/android/mms/pdu/PduBody;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalStateException;
    move-object v8, v9

    .line 1799
    goto :goto_0
.end method

.method public static createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .param p0, "activity"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 249
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 250
    .local v0, "msg":Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method public static createEmpty(Lcom/android/mms/ui/DialogModeActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .param p0, "activity"    # Lcom/android/mms/ui/DialogModeActivity;

    .prologue
    .line 263
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 264
    .local v0, "msg":Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private deleteDraftMmsMessage(J)V
    .locals 5

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2023
    return-void
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2018
    return-void
.end method

.method private dumpWorkingRecipients()V
    .locals 5

    .prologue
    .line 1151
    const-string v2, "WorkingMessage"

    const-string v3, "-- mWorkingRecipients:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1155
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1156
    const-string v3, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1158
    :cond_0
    const-string v2, "WorkingMessage"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private ensureSlideshow()V
    .locals 3

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 652
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 648
    .local v1, "slideshow":Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 649
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 651
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method private ensureThreadIdIfNeeded(Lcom/android/mms/data/Conversation;Z)V
    .locals 1
    .param p1, "conv"    # Lcom/android/mms/data/Conversation;
    .param p2, "isStopping"    # Z

    .prologue
    .line 2058
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2065
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 2067
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2068
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 2070
    :cond_1
    return-void
.end method

.method private hasMmsContentToSave()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1225
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return v0

    .line 1228
    :cond_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private internalChangeMedia(ILandroid/net/Uri;ILcom/android/mms/ui/SlideshowEditor;)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "slideNum"    # I
    .param p4, "slideShowEditor"    # Lcom/android/mms/ui/SlideshowEditor;

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 760
    :try_start_0
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 783
    :goto_0
    return v1

    .line 761
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 762
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "WorkingMessage"

    const-string v3, "internalChangeMedia:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    const/4 v1, -0x1

    .line 782
    goto :goto_0

    .line 763
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 764
    :try_start_1
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 773
    :catch_1
    move-exception v0

    .line 774
    .local v0, "e":Lcom/android/mms/UnsupportContentTypeException;
    const-string v2, "WorkingMessage"

    const-string v3, "internalChangeMedia:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    const/4 v1, -0x3

    .line 782
    goto :goto_0

    .line 765
    .end local v0    # "e":Lcom/android/mms/UnsupportContentTypeException;
    :cond_2
    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    .line 766
    :try_start_2
    invoke-virtual {p4, p3, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVcard(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 776
    :catch_2
    move-exception v0

    .line 777
    .local v0, "e":Lcom/android/mms/ExceedMessageSizeException;
    const-string v2, "WorkingMessage"

    const-string v3, "internalChangeMedia:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    const/4 v1, -0x2

    .line 782
    goto :goto_0

    .line 768
    .end local v0    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :cond_3
    const/4 v1, -0x3

    goto :goto_0

    .line 779
    :catch_3
    move-exception v0

    .line 780
    .local v0, "e":Lcom/android/mms/ResolutionException;
    const-string v2, "WorkingMessage"

    const-string v3, "internalChangeMedia:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    const/4 v1, -0x4

    goto :goto_0
.end method

.method private isAllIccReady()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2072
    const/4 v0, 0x0

    .line 2074
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2075
    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->isIccReady(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2076
    add-int/lit8 v0, v0, 0x1

    .line 2074
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2080
    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isIccReady(I)Z
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 2085
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 8
    .param p0, "activity"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 273
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 275
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const-string v4, "load: moving %s to drafts"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_0
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 286
    .end local v2    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    :cond_1
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 287
    .local v1, "msg":Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {v1, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    iput-boolean v6, v1, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 292
    .end local v1    # "msg":Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v1

    .line 280
    .restart local v2    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "Can\'t move %s to drafts"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 282
    goto :goto_0

    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .end local v2    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    .restart local v1    # "msg":Lcom/android/mms/data/WorkingMessage;
    :cond_2
    move-object v1, v3

    .line 292
    goto :goto_0
.end method

.method public static loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .param p0, "activity"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "conv"    # Lcom/android/mms/data/Conversation;
    .param p2, "onDraftLoaded"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x0

    .line 353
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "loadDraft %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 356
    .local v0, "msg":Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 357
    if-eqz p2, :cond_1

    .line 358
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 408
    :cond_1
    :goto_0
    return-object v0

    .line 363
    :cond_2
    new-instance v1, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 15
    .param p0, "conv"    # Lcom/android/mms/data/Conversation;
    .param p1, "subject"    # Ljava/lang/CharSequence;

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v2

    .line 1742
    .local v2, "dests":[Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/mms/data/Conversation;->getRecipientsToCcNumbers(Z)[Ljava/lang/String;

    move-result-object v10

    .line 1744
    .local v10, "toCc":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1745
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 1746
    .local v1, "dest":Ljava/lang/String;
    invoke-static {v10, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1747
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1745
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1750
    .end local v1    # "dest":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 1751
    .local v9, "to":[Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "to":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 1754
    .restart local v9    # "to":[Ljava/lang/String;
    new-instance v8, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1757
    .local v8, "req":Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 1758
    .local v3, "encodedNumbers":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_2

    .line 1759
    invoke-virtual {v8, v3}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1763
    :cond_2
    invoke-static {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1764
    .local v4, "encodedNumbersForCc":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v4, :cond_4

    .line 1765
    invoke-virtual {v8, v4}, Lcom/google/android/mms/pdu/SendReq;->setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1772
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1773
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1776
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1778
    return-object v8

    .line 1768
    :cond_4
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    invoke-static {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/mms/pdu/SendReq;->setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto :goto_1
.end method

.method private markMmsMessageWithError(Landroid/net/Uri;)V
    .locals 8

    .prologue
    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1672
    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1675
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1676
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1677
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1678
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :goto_0
    return-void

    .line 1681
    :catch_0
    move-exception v0

    .line 1684
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move message to outbox and mark as error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1444
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1446
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1448
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1451
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    .line 1453
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v4

    .line 1456
    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1458
    :cond_1
    cmp-long v5, v0, v6

    if-eqz v5, :cond_3

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WorkingMessage.preSendSmsWorker threadId changed or recipients changed. origThreadId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " also mConversation.getThreadId(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1469
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1474
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    if-eqz v0, :cond_4

    .line 1475
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "it is resend sms recipient="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    .line 1483
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 1486
    invoke-direct {p0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->deleteDraftMmsMessage(J)V

    .line 1487
    return-void

    .line 1458
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recipients in window: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" differ from recipients from conv: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1479
    :cond_4
    invoke-direct {p0, p2, v4, v2, v3}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private prepareForSave(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 901
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 903
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 905
    :cond_0
    return-void
.end method

.method private static readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1701
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readDraftMmsMessage conv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1705
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1708
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1714
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1715
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1717
    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v0

    .line 1719
    if-eqz v0, :cond_1

    .line 1720
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    :cond_1
    const-string v0, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1723
    const-string v0, "readDraftMmsMessage uri: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1731
    :goto_0
    return-object v5

    .line 1728
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1894
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1895
    const-string v2, "Mms:app"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1896
    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDraftSmsMessage conv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1900
    :cond_1
    const-string v0, ""

    .line 1937
    :cond_2
    :goto_0
    return-object v0

    .line 1903
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1904
    const-string v9, ""

    .line 1906
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1909
    if-eqz v2, :cond_7

    .line 1911
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1912
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v0

    move v0, v7

    .line 1916
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v11, v0

    move-object v0, v1

    move v1, v11

    .line 1923
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 1924
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1931
    invoke-virtual {p0, p1, v8}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 1933
    :cond_4
    const-string v1, "Mms:app"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1934
    const-string v1, "readDraftSmsMessage haveDraft: "

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1916
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    move v7, v8

    .line 1934
    goto :goto_3

    :cond_6
    move v0, v8

    move-object v1, v9

    goto :goto_1

    :cond_7
    move v1, v8

    move-object v0, v9

    goto :goto_2
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 890
    :cond_0
    return-void
.end method

.method public static removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V
    .locals 5
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 455
    if-eqz p0, :cond_3

    .line 456
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v3

    .line 457
    .local v3, "thumbnailManager":Lcom/android/mms/util/ThumbnailManager;
    const/4 v1, 0x0

    .line 458
    .local v1, "removedSomething":Z
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 459
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 461
    .local v2, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 463
    const/4 v1, 0x1

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 466
    const/4 v1, 0x1

    goto :goto_0

    .line 469
    .end local v2    # "slideModel":Lcom/android/mms/model/SlideModel;
    :cond_2
    if-eqz v1, :cond_3

    .line 475
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/ThumbnailManager;->clearBackingStore()V

    .line 478
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v1    # "removedSomething":Z
    .end local v3    # "thumbnailManager":Lcom/android/mms/util/ThumbnailManager;
    :cond_3
    return-void
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Z)V
    .locals 15

    .prologue
    .line 1520
    .line 1521
    const/4 v10, 0x0

    .line 1525
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1526
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1530
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v13

    .line 1532
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v3

    .line 1539
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1542
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/data/Conversation;->verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1545
    const-string v5, "Mms:app"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMmsWorker: newAddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dests[0]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1550
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1551
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1552
    invoke-static {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 1553
    if-eqz v3, :cond_3

    .line 1554
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1555
    const-string v4, "sendMmsWorker: REPLACING number!!!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1561
    :cond_3
    if-nez p2, :cond_5

    const/4 v3, 0x1

    move v12, v3

    .line 1562
    :goto_0
    if-eqz v12, :cond_f

    .line 1564
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1565
    const-string v3, "msg_box"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1566
    const-string v3, "thread_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1567
    const-string v3, "m_type"

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1568
    if-eqz p6, :cond_4

    .line 1569
    const-string v3, "text_only"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1571
    :cond_4
    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    .line 1573
    :goto_1
    const-string v5, "sub_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1574
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v5, v6, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1581
    :goto_2
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1584
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1586
    if-eqz v4, :cond_9

    .line 1587
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-long v7, v3

    .line 1589
    const-wide/16 v5, 0x0

    .line 1590
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1591
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v9

    add-long/2addr v5, v9

    goto :goto_3

    .line 1561
    :cond_5
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_0

    .line 1571
    :cond_6
    :try_start_2
    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1593
    :cond_7
    cmp-long v3, v5, v7

    if-ltz v3, :cond_9

    .line 1594
    :try_start_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 1595
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V

    .line 1596
    invoke-direct {p0, v11}, Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1601
    if-eqz v4, :cond_8

    .line 1602
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1665
    :cond_8
    :goto_4
    return-void

    .line 1601
    :cond_9
    if-eqz v4, :cond_a

    .line 1602
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1607
    :cond_a
    if-eqz v12, :cond_d

    .line 1609
    :try_start_4
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object v6, v11

    invoke-static/range {v3 .. v8}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    .line 1617
    :goto_5
    invoke-direct {p0, v13, v14}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1619
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1638
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1639
    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    .line 1640
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->isAllIccReady()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1641
    const-string v3, "sub_id"

    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1647
    :goto_6
    :try_start_5
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1648
    new-instance v3, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v6

    int-to-long v6, v6

    iget v8, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 1650
    invoke-interface {v3, v13, v14}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1653
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1656
    :cond_b
    invoke-direct {p0, v13, v14}, Lcom/android/mms/data/WorkingMessage;->deleteDraftMmsMessage(J)V

    .line 1658
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v13, v14}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1663
    :goto_7
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1664
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_4

    .line 1601
    :catchall_0
    move-exception v3

    move-object v4, v10

    :goto_8
    if-eqz v4, :cond_c

    .line 1602
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3

    .line 1613
    :cond_d
    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v11, v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v11

    goto :goto_5

    .line 1619
    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v3

    .line 1643
    :cond_e
    const-string v3, "sub_id"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1659
    :catch_0
    move-exception v3

    .line 1660
    const-string v4, "WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1601
    :catchall_2
    move-exception v3

    goto :goto_8

    :cond_f
    move-object/from16 v11, p2

    goto/16 :goto_2
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 1490
    const-string v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1491
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSmsWorker sending message: recipients="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", threadId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_0
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v6

    .line 1500
    :goto_0
    const-string v0, "Trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredSmsSubscription="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const-string v0, "Trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCurrentConvSub="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1506
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 1509
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1515
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1516
    return-void

    .line 1497
    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    goto :goto_0

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 1247
    if-nez p0, :cond_0

    .line 1248
    const-string v1, "<none>"

    .line 1265
    :goto_0
    return-object v1

    .line 1250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1251
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1252
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1254
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1256
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1258
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1260
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_6

    .line 1262
    const-string v1, "MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 3

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 876
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private syncTextToSlideshow()V
    .locals 6

    .prologue
    .line 848
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 853
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-nez v2, :cond_2

    .line 855
    new-instance v1, Lcom/android/mms/model/TextModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const-string v3, "text/plain"

    const-string v4, "text_0.txt"

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 857
    .local v1, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 862
    :goto_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 860
    .end local v1    # "text":Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .restart local v1    # "text":Lcom/android/mms/model/TextModel;
    goto :goto_1
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPersister;",
            "Lcom/android/mms/model/SlideshowModel;",
            "Lcom/google/android/mms/pdu/SendReq;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1846
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1847
    const-string v0, "updateDraftMmsMessage uri=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1849
    :cond_0
    if-nez p0, :cond_1

    .line 1850
    const-string v0, "WorkingMessage"

    const-string v1, "updateDraftMmsMessage null uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :goto_0
    return-void

    .line 1853
    :cond_1
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1855
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1858
    :try_start_0
    invoke-virtual {p1, p0, v0, p4}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1865
    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    .line 1859
    :catch_0
    move-exception v1

    .line 1860
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1863
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    .line 1973
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1974
    const-string v2, "Mms:app"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1975
    const-string v2, "updateDraftSmsMessage tid=%d, contents=\"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1979
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1990
    :goto_0
    return-void

    .line 1983
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1984
    const-string v3, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1985
    const-string v0, "body"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v0, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1987
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v3, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1988
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private updateSendStats(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .param p1, "conv"    # Lcom/android/mms/data/Conversation;

    .prologue
    .line 1413
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "dests":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1416
    .local v1, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 1417
    .local v2, "updater":Lcom/android/common/contacts/DataUsageStatUpdater;
    invoke-virtual {v2, v1}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;)Z

    .line 1418
    return-void
.end method

.method private updateState(IZZ)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "on"    # Z
    .param p3, "notify"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1276
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v1, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1283
    .local v0, "oldState":I
    if-eqz p2, :cond_4

    .line 1284
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1291
    :goto_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    and-int/lit8 v1, v0, -0x11

    if-lez v1, :cond_2

    .line 1292
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1297
    :cond_2
    if-eqz p3, :cond_3

    .line 1298
    if-nez v0, :cond_5

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v1, :cond_5

    .line 1299
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1305
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v0, v1, :cond_0

    .line 1306
    const-string v1, "Mms:app"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "updateState: %s%s = %s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz p2, :cond_6

    const-string v1, "+"

    :goto_3
    aput-object v1, v3, v4

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1286
    :cond_4
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    .line 1300
    :cond_5
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_3

    .line 1301
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    .line 1306
    :cond_6
    const-string v1, "-"

    goto :goto_3
.end method


# virtual methods
.method public asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4

    .prologue
    .line 2005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    .line 2007
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2008
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2009
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2012
    :cond_0
    return-void
.end method

.method public clearConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 1
    .param p1, "conv"    # Lcom/android/mms/data/Conversation;
    .param p2, "resetThreadId"    # Z

    .prologue
    .line 1941
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1946
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1947
    return-void
.end method

.method public declared-synchronized discard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1050
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const-string v0, "[WorkingMessage] discard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    .line 1071
    :goto_0
    monitor-exit p0

    return-void

    .line 1059
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1061
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->cancelThumbnailLoading()V

    .line 1064
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    if-eqz v0, :cond_2

    .line 1065
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1067
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 1163
    const-string v0, "WorkingMessage"

    const-string v1, "WorkingMessage:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->dumpWorkingRecipients()V

    .line 1165
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 1166
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    return-void
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getCurrentConvSub()I
    .locals 1

    .prologue
    .line 2040
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    return v0
.end method

.method public getResendMultiRecipients()Z
    .locals 1

    .prologue
    .line 2048
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    return v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWorkingRecipients()Ljava/lang/String;
    .locals 3

    .prologue
    .line 929
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-nez v1, :cond_0

    .line 930
    const/4 v1, 0x0

    .line 933
    :goto_0
    return-object v1

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 933
    .local v0, "recipients":Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 811
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAddingAttachment()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mAddingStatus:Z

    return v0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorthSaving()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isAddingAttachment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadFromUri(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "loadFromUri %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 340
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 341
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    .line 343
    :goto_0
    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 334
    goto :goto_0
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1110
    if-nez p1, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1114
    :cond_0
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1117
    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1118
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1119
    invoke-virtual {p0, v2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1122
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "body":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public removeAttachment(Z)V
    .locals 3
    .param p1, "notify"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 438
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 439
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 440
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 442
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 445
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 446
    if-eqz p1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 452
    :cond_1
    return-void
.end method

.method public removeFakeMmsForDraft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 940
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 941
    return-void
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1217
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 7
    .param p1, "notify"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 951
    iget-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v3, :cond_0

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAsMms mDiscarded: true mConversation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returning NULL uri and bailing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 989
    :goto_0
    return-object v2

    .line 961
    :cond_0
    const/16 v2, 0x10

    invoke-direct {p0, v2, v4, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 964
    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 968
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 969
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 970
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 972
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 974
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 975
    .local v0, "persister":Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 979
    .local v1, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 980
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 985
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 989
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    .line 983
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 987
    .end local v0    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    .end local v1    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v2
.end method

.method public saveDraft(Z)V
    .locals 5
    .param p1, "isStopping"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 998
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_0

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDraft mDiscarded: true mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipping saving draft and bailing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_1

    .line 1006
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "saveDraft() called with no conversation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1009
    :cond_1
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDraft for mConversation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1017
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->hasMmsContentToSave()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1018
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    .line 1019
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 1046
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    goto :goto_0

    .line 1022
    :cond_4
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1031
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    .line 1032
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    goto :goto_1

    .line 1039
    :cond_5
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1040
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1041
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1321
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 1323
    const-string v3, "Mms:transaction"

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send origThreadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1327
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1330
    invoke-direct {p0, v8}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1333
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1334
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1336
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1339
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1340
    const-string v0, "WorkingMessage.send MMS sending failure. mms_config.xml is missing uaProfUrl setting.  uaProfUrl is required for MMS service, but can be absent for SMS."

    .line 1343
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1344
    const-string v2, "WorkingMessage"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    throw v1

    .line 1352
    :cond_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1353
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 1355
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1356
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 1357
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v1, :cond_4

    move v7, v8

    .line 1359
    :goto_0
    const-string v1, "Mms:transaction"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send mmsUri: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    :cond_3
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Z)V

    const-string v1, "WorkingMessage.send MMS"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1405
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 1408
    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1409
    return-void

    :cond_4
    move v7, v0

    .line 1357
    goto :goto_0

    .line 1380
    :cond_5
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1381
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1382
    const-string v4, "pref_key_enable_signature"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1383
    const-string v0, "pref_key_edit_signature"

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1386
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1394
    :goto_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v3, p0, v2, v0, p1}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WorkingMessage.send SMS"

    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public setAddingAttachment(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mAddingStatus:Z

    .line 798
    return-void
.end method

.method public setAttachment(ILandroid/net/Uri;Z)I
    .locals 13
    .param p1, "type"    # I
    .param p2, "dataUri"    # Landroid/net/Uri;
    .param p3, "append"    # Z

    .prologue
    .line 488
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const-string v1, "setAttachment type=%d uri %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_0
    const/4 v11, 0x0

    .line 492
    .local v11, "result":I
    new-instance v12, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v12, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 502
    .local v12, "slideShowEditor":Lcom/android/mms/ui/SlideshowEditor;
    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 504
    invoke-virtual {v12}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 508
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 509
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12, v1}, Lcom/android/mms/ui/SlideshowEditor;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 513
    if-eqz p3, :cond_6

    .line 514
    :try_start_0
    invoke-direct {p0, p1, p2, v12}, Lcom/android/mms/data/WorkingMessage;->appendMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v11

    .line 542
    :cond_3
    :goto_0
    if-nez v11, :cond_4

    .line 543
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 547
    :cond_4
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 550
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_5

    .line 551
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    .line 552
    .local v9, "numSlides":I
    if-lez v9, :cond_5

    .line 553
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v7

    .line 554
    .local v7, "imgModel":Lcom/android/mms/model/ImageModel;
    if-eqz v7, :cond_5

    .line 555
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->cancelThumbnailLoading()V

    .line 556
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 567
    .end local v7    # "imgModel":Lcom/android/mms/model/ImageModel;
    .end local v9    # "numSlides":I
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMultipartSmsEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 568
    if-nez p3, :cond_8

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 569
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v10

    .line 576
    .local v10, "params":[I
    const/4 v1, 0x0

    aget v8, v10, v1

    .line 578
    .local v8, "msgCount":I
    const/4 v1, 0x1

    if-le v8, v1, :cond_7

    .line 581
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 594
    .end local v8    # "msgCount":I
    .end local v10    # "params":[I
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    .line 596
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 597
    return v11

    .line 516
    :cond_6
    :try_start_1
    invoke-direct {p0, p1, p2, v12}, Lcom/android/mms/data/WorkingMessage;->changeMedia(ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;)I

    move-result v11

    .line 518
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->removOtherAttach()V

    .line 519
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 520
    new-instance v0, Lcom/android/mms/model/VCalendarModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, "text/x-vCalendar"

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 521
    .local v0, "model":Lcom/android/mms/model/VCalendarModel;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->addOtherAttachModel(Lcom/android/mms/model/OtherAttachModel;)V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 525
    .end local v0    # "model":Lcom/android/mms/model/VCalendarModel;
    :catch_0
    move-exception v6

    .line 526
    .local v6, "e":Lcom/android/mms/UnsupportContentTypeException;
    const/4 v11, -0x3

    .line 536
    goto :goto_0

    .line 527
    .end local v6    # "e":Lcom/android/mms/UnsupportContentTypeException;
    :catch_1
    move-exception v6

    .line 528
    .local v6, "e":Lcom/android/mms/ExceedMessageSizeException;
    const/4 v11, -0x2

    .line 536
    goto :goto_0

    .line 529
    .end local v6    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :catch_2
    move-exception v6

    .line 530
    .local v6, "e":Lcom/android/mms/ResolutionException;
    const/4 v11, -0x4

    .line 536
    goto :goto_0

    .line 532
    .end local v6    # "e":Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v6

    .line 533
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/4 v11, -0x1

    .line 536
    goto/16 :goto_0

    .line 534
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v6

    .line 535
    .local v6, "e":Ljava/lang/NullPointerException;
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 583
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "msgCount":I
    .restart local v10    # "params":[I
    :cond_7
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_1

    .line 586
    .end local v8    # "msgCount":I
    .end local v10    # "params":[I
    :cond_8
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_1

    .line 590
    :cond_9
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_1
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .param p1, "conv"    # Lcom/android/mms/data/Conversation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1176
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1179
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1180
    .local v0, "contactList":Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1181
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1182
    return-void

    :cond_0
    move v1, v2

    .line 1181
    goto :goto_0
.end method

.method public setCurrentConvSub(I)V
    .locals 0
    .param p1, "subscription"    # I

    .prologue
    .line 2036
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mCurrentConvSub:I

    .line 2037
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2
    .param p1, "hasEmail"    # Z
    .param p2, "notify"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1193
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1194
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1198
    :goto_0
    return-void

    .line 1196
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setHasMultipleRecipients(ZZ)V
    .locals 2
    .param p1, "hasMultipleRecipients"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1207
    const/16 v1, 0x20

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1211
    return-void

    .line 1207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLengthRequiresMms(ZZ)V
    .locals 1
    .param p1, "mmsRequired"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1243
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1244
    return-void
.end method

.method public setResendMultiRecipients(Z)V
    .locals 0
    .param p1, "bResendMultiRecipients"    # Z

    .prologue
    .line 2044
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mResendMultiRecipients:Z

    .line 2045
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "notify"    # Z

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 824
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 825
    return-void

    .line 824
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 416
    return-void
.end method

.method public setWorkingRecipients(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 1134
    const/4 v0, 0x0

    .line 1135
    .local v0, "s":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1137
    .local v1, "size":I
    packed-switch v1, :pswitch_data_0

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{...} len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .end local v1    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 1139
    .restart local v1    # "size":I
    :pswitch_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "s":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1140
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1142
    :pswitch_1
    const-string v0, "empty"

    .line 1143
    goto :goto_0

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncWorkingRecipients()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 911
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 913
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6, v9}, Lcom/android/mms/data/Conversation;->getRecipientsToCcNumbers(Z)[Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, "ccStrings":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 915
    .local v1, "cc":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipientsToCc:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 914
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 918
    .end local v1    # "cc":Ljava/lang/String;
    :cond_0
    const-string v6, "WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWorkingRecipientsToCc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipientsToCc:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-static {v6, v9}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v5

    .line 921
    .local v5, "recipients":Lcom/android/mms/data/ContactList;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 922
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipientsToCc:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/android/mms/data/Conversation;->setRecipientsToCcNumbers(Ljava/util/List;)V

    .line 923
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 925
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "ccStrings":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "recipients":Lcom/android/mms/data/ContactList;
    :cond_1
    return-void
.end method

.method public unDiscard()V
    .locals 1

    .prologue
    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1077
    return-void
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1098
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1102
    :cond_1
    :goto_0
    return-void

    .line 1099
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
