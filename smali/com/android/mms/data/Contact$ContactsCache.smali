.class Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final SELF_PROJECTION:[Ljava/lang/String;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 455
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 457
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "contact_presence"

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 481
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    .line 490
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 495
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data4"

    aput-object v1, v0, v4

    const-string v1, "contact_presence"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const-string v1, "send_to_voicemail"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1136
    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 516
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/mms/data/Contact$1;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/Contact$ContactsCache;
    .param p1, "x1"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->remove(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/Contact$ContactsCache;
    .param p1, "x1"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 12
    .param p1, "orig"    # Lcom/android/mms/data/Contact;
    .param p2, "newContactData"    # Lcom/android/mms/data/Contact;

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 710
    # getter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v6

    # getter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v4

    .line 714
    :cond_1
    # getter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    # getter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 718
    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 719
    const-string v5, "Mms:contact"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    const-string v5, "Contact"

    const-string v6, "person id changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_2
    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v6

    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 726
    const-string v5, "Mms:contact"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 727
    const-string v5, "Contact"

    const-string v6, "presence changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    :cond_3
    # getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Z

    move-result v6

    # getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 736
    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "oldName":Ljava/lang/String;
    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 739
    const-string v6, "Mms:contact"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 740
    const-string v6, "Contact"

    const-string v7, "name changed: %s -> %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v5

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_4
    # getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "oldLabel":Ljava/lang/String;
    # getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "newLabel":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 748
    const-string v6, "Mms:contact"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 749
    const-string v6, "Contact"

    const-string v7, "label changed: %s -> %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v5

    aput-object v0, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    :cond_5
    # getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)[B

    move-result-object v6

    # getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    .line 755
    const-string v5, "Mms:contact"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 756
    const-string v5, "Contact"

    const-string v6, "avatar changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 761
    goto/16 :goto_0
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "contact"    # Lcom/android/mms/data/Contact;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 951
    monitor-enter p1

    .line 952
    const/4 v3, 0x1

    :try_start_0
    # setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 953
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    # setter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;J)J

    .line 954
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 955
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 957
    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v3

    # setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;I)I

    .line 959
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->access$1902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 960
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->access$2102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 961
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    # setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Z)Z

    .line 963
    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mLookup_key:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$2202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 964
    const-string v1, "Mms:contact"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillPhoneTypeContact: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SendToVoicemail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 969
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 972
    .local v0, "data":[B
    monitor-enter p1

    .line 973
    :try_start_1
    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1802(Lcom/android/mms/data/Contact;[B)[B

    .line 974
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 975
    return-void

    .end local v0    # "data":[B
    :cond_1
    move v1, v2

    .line 961
    goto :goto_0

    .line 969
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 974
    .restart local v0    # "data":[B
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private fillSelfContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "contact"    # Lcom/android/mms/data/Contact;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 978
    monitor-enter p1

    .line 979
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 980
    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 983
    :cond_0
    const-string v1, "Mms:contact"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillSelfContact: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 987
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 990
    .local v0, "data":[B
    monitor-enter p1

    .line 991
    :try_start_1
    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$1802(Lcom/android/mms/data/Contact;[B)[B

    .line 992
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 993
    return-void

    .line 987
    .end local v0    # "data":[B
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 992
    .restart local v0    # "data":[B
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isMe"    # Z
    .param p3, "canBlock"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 585
    const-string v4, "Mms:contact"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    const-string v4, "Contact"

    const-string v5, "get(%s, %s, %s)"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mms/data/Contact;->logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    const-string p1, ""

    .line 598
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->internalGet(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 599
    .local v1, "contact":Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 601
    .local v2, "r":Ljava/lang/Runnable;
    monitor-enter v1

    .line 604
    :goto_0
    if-eqz p3, :cond_2

    :try_start_0
    # getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 606
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v4

    goto :goto_0

    .line 614
    :cond_2
    :try_start_2
    # getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_4

    # getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 615
    const/4 v4, 0x0

    # setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Z)Z

    .line 616
    const/4 v4, 0x1

    # setter for: Lcom/android/mms/data/Contact;->mUpdatingContact:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Z)Z

    .line 618
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "async update for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " canBlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$500(Lcom/android/mms/data/Contact;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 623
    :cond_3
    move-object v0, v1

    .line 624
    .local v0, "c":Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    .end local v2    # "r":Ljava/lang/Runnable;
    .local v3, "r":Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    # setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 637
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v3    # "r":Ljava/lang/Runnable;
    .restart local v2    # "r":Ljava/lang/Runnable;
    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 640
    if-eqz v2, :cond_5

    .line 641
    if-eqz p3, :cond_6

    .line 642
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 647
    :cond_5
    :goto_1
    return-object v1

    .line 637
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 644
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 637
    .end local v2    # "r":Ljava/lang/Runnable;
    .restart local v0    # "c":Lcom/android/mms/data/Contact;
    .restart local v3    # "r":Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "r":Ljava/lang/Runnable;
    .restart local v2    # "r":Ljava/lang/Runnable;
    goto :goto_2
.end method

.method private getContactInfo(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    .locals 1
    .param p1, "c"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 827
    # getter for: Lcom/android/mms/data/Contact;->mIsMe:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$2500(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForSelf()Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 832
    :goto_0
    return-object v0

    .line 829
    :cond_0
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->isAlphaNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    :cond_1
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 832
    :cond_2
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 14
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1053
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1054
    .local v9, "entry":Lcom/android/mms/data/Contact;
    # setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 1056
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v12, [Ljava/lang/String;

    aput-object p1, v5, v13

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1063
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 1065
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    const/4 v10, 0x0

    .line 1067
    .local v10, "found":Z
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1068
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    # setter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;J)J

    .line 1069
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    # setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;I)I

    .line 1071
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 1072
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_6

    move v0, v12

    :goto_0
    # setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Z)Z

    .line 1075
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1076
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1079
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1080
    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    const-string v0, "Mms:contact"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContactInfoForEmailAddress: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v9}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 1086
    :cond_2
    const/4 v10, 0x1

    .line 1088
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    if-eqz v10, :cond_0

    .line 1091
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    .line 1092
    .local v8, "data":[B
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1093
    :try_start_3
    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$1802(Lcom/android/mms/data/Contact;[B)[B

    .line 1094
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1100
    .end local v8    # "data":[B
    .end local v10    # "found":Z
    .end local v11    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1103
    :cond_5
    return-object v9

    .restart local v10    # "found":Z
    :cond_6
    move v0, v13

    .line 1072
    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1100
    .end local v10    # "found":Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1094
    .restart local v8    # "data":[B
    .restart local v10    # "found":Z
    .restart local v11    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 12
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 876
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 877
    new-instance v7, Lcom/android/mms/data/Contact;

    const/4 v0, 0x0

    invoke-direct {v7, p1, v0}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 878
    .local v7, "entry":Lcom/android/mms/data/Contact;
    const/4 v0, 0x1

    # setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 880
    const-string v0, "Mms:contact"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryContactInfoByNumber: number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 884
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 885
    .local v9, "normalizedNumber":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 886
    .local v8, "minMatch":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 888
    .local v11, "numberLen":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 892
    .local v10, "numberE164":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= 11 AND  substr(substr(?, ? - lookup.len + 1), 1) = lookup.normalized_number) OR (lookup.len > 11 AND  substr(lookup.normalized_number, lookup.len - 11 + 1) = substr(?, ? - 11 + 1)))"

    .line 894
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v9, v4, v0

    const/4 v0, 0x2

    aput-object v11, v4, v0

    const/4 v0, 0x3

    aput-object v9, v4, v0

    const/4 v0, 0x4

    aput-object v11, v4, v0

    .line 901
    .local v4, "args":[Ljava/lang/String;
    :goto_0
    const-string v0, "zhangjun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v0, "zhangjun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 905
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 906
    const-string v0, "Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "numberE164":Ljava/lang/String;
    .end local v11    # "numberLen":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 896
    .restart local v10    # "numberE164":Ljava/lang/String;
    .restart local v11    # "numberLen":Ljava/lang/String;
    :cond_2
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = substr(?, ? - 11 + 1) OR (lookup.len <= 11 AND  substr(substr(?, ? - 11 + 1), 1) = lookup.normalized_number) OR (lookup.len > 11 AND  substr(lookup.normalized_number, lookup.len - 11 + 1) = substr(?, ? - 11 + 1)))"

    .line 898
    .restart local v3    # "selection":Ljava/lang/String;
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v10, v4, v0

    const/4 v0, 0x2

    aput-object v11, v4, v0

    const/4 v0, 0x3

    aput-object v9, v4, v0

    const/4 v0, 0x4

    aput-object v11, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    .restart local v4    # "args":[Ljava/lang/String;
    goto/16 :goto_0

    .line 912
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    invoke-direct {p0, v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactInfoForSelf()Lcom/android/mms/data/Contact;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 926
    new-instance v7, Lcom/android/mms/data/Contact;

    const/4 v0, 0x1

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(ZLcom/android/mms/data/Contact$1;)V

    .line 927
    .local v7, "entry":Lcom/android/mms/data/Contact;
    # setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v7, v1}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 929
    const-string v0, "Mms:contact"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const-string v0, "getContactInfoForSelf"

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 934
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 935
    const-string v0, "Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactInfoForSelf() returned NULL cursor! contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :goto_0
    return-object v7

    .line 941
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    invoke-direct {p0, v7, v6}, Lcom/android/mms/data/Contact$ContactsCache;->fillSelfContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "presence"    # I

    .prologue
    .line 1042
    if-eqz p1, :cond_0

    .line 1043
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 1046
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalGet(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 8
    .param p1, "numberOrEmail"    # Ljava/lang/String;
    .param p2, "isMe"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1139
    monitor-enter p0

    .line 1142
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1144
    .local v3, "isNotRegularPhoneNumber":Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1147
    .local v4, "key":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1148
    .local v1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_8

    .line 1149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1150
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_9

    .line 1151
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1152
    .local v0, "c":Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_3

    .line 1153
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1154
    monitor-exit p0

    .line 1185
    .end local v2    # "i":I
    .end local v5    # "length":I
    :goto_3
    return-object v0

    .line 1142
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3    # "isNotRegularPhoneNumber":Z
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1144
    .restart local v3    # "isNotRegularPhoneNumber":Z
    :cond_2
    sget-object v6, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v6}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1157
    .restart local v0    # "c":Lcom/android/mms/data/Contact;
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "length":I
    :cond_3
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1159
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "12520"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "12520"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1162
    :cond_4
    const-string v6, "Trace"

    const-string v7, "for fection number"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_5
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1172
    monitor-exit p0

    goto :goto_3

    .line 1186
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2    # "i":I
    .end local v3    # "isNotRegularPhoneNumber":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "length":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1166
    .restart local v0    # "c":Lcom/android/mms/data/Contact;
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isNotRegularPhoneNumber":Z
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "length":I
    :cond_6
    :try_start_1
    monitor-exit p0

    goto :goto_3

    .line 1150
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1177
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v2    # "i":I
    .end local v5    # "length":I
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    :cond_9
    if-eqz p2, :cond_a

    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/android/mms/data/Contact;-><init>(ZLcom/android/mms/data/Contact$1;)V

    .line 1184
    .restart local v0    # "c":Lcom/android/mms/data/Contact;
    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    monitor-exit p0

    goto :goto_3

    .line 1181
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    :cond_a
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private isAlphaNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 855
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 859
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "keyBuffer"    # Ljava/nio/CharBuffer;

    .prologue
    .line 1110
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1111
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 1113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1114
    .local v1, "position":I
    const/4 v2, 0x0

    .line 1115
    .local v2, "resultCount":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1116
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1117
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1119
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1124
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 1125
    if-lez v2, :cond_2

    .line 1126
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1129
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 7
    .param p1, "entry"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 1002
    const/4 v2, 0x0

    .line 1004
    .local v2, "data":[B
    # getter for: Lcom/android/mms/data/Contact;->mIsMe:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$2500(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    :cond_0
    # getter for: Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$2000(Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1005
    :cond_1
    const/4 v3, 0x0

    .line 1037
    :goto_0
    return-object v3

    .line 1008
    :cond_2
    const-string v3, "Mms:contact"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAvatarData: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 1014
    :cond_3
    # getter for: Lcom/android/mms/data/Contact;->mIsMe:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$2500(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1018
    .local v1, "contactUri":Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1022
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    .line 1023
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v2, v3, [B

    .line 1024
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :cond_4
    if-eqz v0, :cond_5

    .line 1031
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_2
    move-object v3, v2

    .line 1037
    goto :goto_0

    .line 1014
    .end local v0    # "avatarDataStream":Ljava/io/InputStream;
    .end local v1    # "contactUri":Landroid/net/Uri;
    :cond_6
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 1026
    .restart local v0    # "avatarDataStream":Ljava/io/InputStream;
    .restart local v1    # "contactUri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 1030
    if-eqz v0, :cond_5

    .line 1031
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1033
    :catch_1
    move-exception v3

    goto :goto_2

    .line 1029
    :catchall_0
    move-exception v3

    .line 1030
    if-eqz v0, :cond_7

    .line 1031
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1034
    :cond_7
    :goto_3
    throw v3

    .line 1033
    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method private remove(Lcom/android/mms/data/Contact;)V
    .locals 8
    .param p1, "contact"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 1205
    monitor-enter p0

    .line 1206
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 1207
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isMe()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 1210
    .local v3, "isNotRegularPhoneNumber":Z
    :goto_0
    if-eqz v3, :cond_4

    move-object v4, v6

    .line 1212
    .local v4, "key":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1213
    .local v1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_2

    .line 1214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1215
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_1

    .line 1216
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1217
    .local v0, "c":Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_5

    .line 1218
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1219
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1229
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 1230
    iget-object v7, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    .end local v2    # "i":I
    .end local v5    # "length":I
    :cond_2
    monitor-exit p0

    .line 1234
    return-void

    .line 1207
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3    # "isNotRegularPhoneNumber":Z
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1210
    .restart local v3    # "isNotRegularPhoneNumber":Z
    :cond_4
    sget-object v7, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, v6, v7}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1223
    .restart local v0    # "c":Lcom/android/mms/data/Contact;
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "length":I
    :cond_5
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1224
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1233
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2    # "i":I
    .end local v3    # "isNotRegularPhoneNumber":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1215
    .restart local v0    # "c":Lcom/android/mms/data/Contact;
    .restart local v1    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isNotRegularPhoneNumber":Z
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "length":I
    .restart local v6    # "number":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updateContact(Lcom/android/mms/data/Contact;)V
    .locals 7
    .param p1, "c"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 765
    if-nez p1, :cond_0

    .line 821
    :goto_0
    return-void

    .line 769
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 770
    .local v0, "entry":Lcom/android/mms/data/Contact;
    monitor-enter p1

    .line 771
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 772
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContact: contact changed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 776
    :cond_1
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    # getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 778
    # getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    # setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 779
    # getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)I

    move-result v4

    # setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;I)I

    .line 780
    # getter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    # getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)[B

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1802(Lcom/android/mms/data/Contact;[B)[B

    .line 782
    # getter for: Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$2000(Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$2002(Lcom/android/mms/data/Contact;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 783
    # getter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    # setter for: Lcom/android/mms/data/Contact;->mContactMethodId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;J)J

    .line 784
    # getter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v4

    # setter for: Lcom/android/mms/data/Contact;->mContactMethodType:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 785
    # getter for: Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$2100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$2102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 786
    # getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    # getter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    # setter for: Lcom/android/mms/data/Contact;->mSendToVoicemail:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Z)Z

    .line 789
    # getter for: Lcom/android/mms/data/Contact;->mLookup_key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$2200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/data/Contact;->mLookup_key:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$2202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 791
    # invokes: Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$2300(Lcom/android/mms/data/Contact;)V

    .line 799
    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 804
    # getter for: Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/mms/data/Contact;->access$2400()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :try_start_1
    # getter for: Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/mms/data/Contact;->access$2400()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 806
    .local v2, "iterator":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 807
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 808
    .local v3, "l":Lcom/android/mms/data/Contact$UpdateListener;
    const-string v4, "Mms:contact"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 809
    const-string v4, "Contact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_2
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_1

    .line 820
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iterator":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3    # "l":Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 806
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4

    .line 815
    :cond_3
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 816
    const/4 v4, 0x0

    :try_start_5
    # setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 818
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 819
    const/4 v4, 0x0

    :try_start_6
    # setter for: Lcom/android/mms/data/Contact;->mUpdatingContact:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Z)Z

    .line 820
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 818
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method


# virtual methods
.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "canBlock"    # Z

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 18
    .param p1, "uris"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_0

    .line 657
    const/4 v9, 0x0

    .line 702
    :goto_0
    return-object v9

    .line 659
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v13, "idSetBuilder":Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    .line 661
    .local v11, "first":Z
    move-object/from16 v7, p1

    .local v7, "arr$":[Landroid/os/Parcelable;
    array-length v14, v7

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_3

    aget-object v15, v7, v12

    .local v15, "p":Landroid/os/Parcelable;
    move-object/from16 v16, v15

    .line 662
    check-cast v16, Landroid/net/Uri;

    .line 663
    .local v16, "uri":Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    if-eqz v11, :cond_2

    .line 665
    const/4 v11, 0x0

    .line 666
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 668
    :cond_2
    const/16 v1, 0x2c

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 673
    .end local v15    # "p":Landroid/os/Parcelable;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v11, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    .line 674
    :cond_4
    const/4 v8, 0x0

    .line 675
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 677
    .local v4, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 681
    .end local v4    # "whereClause":Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_6

    .line 682
    const/4 v9, 0x0

    goto :goto_0

    .line 685
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 690
    new-instance v10, Lcom/android/mms/data/Contact;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v10, v1, v2, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 692
    .local v10, "entry":Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    .line 693
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v17, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    # getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 700
    .end local v10    # "entry":Lcom/android/mms/data/Contact;
    .end local v17    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getMe(Z)Lcom/android/mms/data/Contact;
    .locals 2
    .param p1, "canBlock"    # Z

    .prologue
    .line 577
    const-string v0, "Self_Item_Key"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method invalidate()V
    .locals 5

    .prologue
    .line 1192
    monitor-enter p0

    .line 1193
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1194
    .local v0, "alc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1195
    .local v1, "c":Lcom/android/mms/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1196
    const/4 v4, 0x1

    :try_start_1
    # setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$502(Lcom/android/mms/data/Contact;Z)Z

    .line 1197
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1200
    .end local v0    # "alc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1    # "c":Lcom/android/mms/data/Contact;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1201
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method
