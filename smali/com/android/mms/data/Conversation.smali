.class public Lcom/android/mms/data/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$Cache;,
        Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    }
.end annotation


# static fields
.field public static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final SEEN_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field public static final UNREAD_PROJECTION:[Ljava/lang/String;

.field public static final sAllThreadsUri:Landroid/net/Uri;

.field private static sDeletingThreads:Z

.field private static sDeletingThreadsLock:Ljava/lang/Object;

.field private static sLoadingThreads:Z

.field private static sReadContentValues:Landroid/content/ContentValues;

.field private static sToastHandler:Landroid/os/Handler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasUnreadMessages:Z

.field private mIsChecked:Z

.field private mMarkAsReadBlocked:Z

.field private mMarkAsReadWaiting:Z

.field private mMessageCount:I

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mRecipientsToCcNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnippet:Ljava/lang/String;

.field private mSubId:I

.field private mThreadId:J

.field private mUnreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 58
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "readcount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "seen"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->sToastHandler:Landroid/os/Handler;

    .line 1535
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "error_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    .line 125
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 128
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "allowQuery"    # Z

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    .line 134
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 135
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/data/Conversation;->loadFromThreadId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 139
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "allowQuery"    # Z

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    .line 145
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {p1, p0, p2, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/Conversation;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/mms/data/Conversation;->buildReadContentValues()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/Conversation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/data/Conversation;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/data/Conversation;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/data/Conversation;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/mms/data/Conversation;Landroid/content/Context;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/Conversation;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/Conversation;->sendReadReport(Landroid/content/Context;JI)V

    return-void
.end method

.method static synthetic access$500()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->showToast(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/Conversation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/data/Conversation;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    return p0
.end method

.method public static asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V
    .locals 6
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I

    .prologue
    const/4 v2, 0x0

    .line 792
    sget-object v3, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public static blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1355
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v3, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1361
    const/4 v1, 0x0

    .line 1363
    if-eqz v2, :cond_0

    .line 1365
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1367
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1371
    :cond_0
    if-nez v1, :cond_1

    .line 1390
    :goto_0
    return-void

    .line 1367
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1376
    :cond_1
    const-string v2, "Mms/conv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " MMS msgs as seen"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1380
    const-string v2, "seen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1383
    :try_start_1
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "seen=0"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    const-string v1, "Mms/conv"

    const-string v2, "Database is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 1387
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->showToast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1306
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v3, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1312
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1314
    .local v6, "count":I
    if-eqz v7, :cond_0

    .line 1316
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1318
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_0
    if-nez v6, :cond_1

    .line 1340
    :goto_0
    return-void

    .line 1318
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1327
    :cond_1
    const-string v1, "Mms/conv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS msgs as seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 1331
    .local v9, "values":Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1334
    :try_start_1
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "seen=0"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v8

    .line 1336
    .local v8, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "Mms/conv"

    const-string v2, "Database is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 1338
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->showToast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private buildReadContentValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 330
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    .line 332
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    const-string v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    :cond_0
    return-void
.end method

.method private static cacheAllThreads(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1402
    const-string v0, "Mms:threadcache"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    const-string v0, "[Conversation] cacheAllThreads: begin"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1405
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1406
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    if-eqz v0, :cond_2

    .line 1407
    monitor-exit v1

    .line 1469
    :cond_1
    :goto_0
    return-void

    .line 1409
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    .line 1410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1414
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1420
    if-eqz v1, :cond_6

    .line 1421
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1422
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1423
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1427
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1428
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1429
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1431
    if-nez v0, :cond_5

    .line 1434
    :try_start_3
    new-instance v4, Lcom/android/mms/data/Conversation;

    const/4 v0, 0x1

    invoke-direct {v4, p0, v1, v0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1436
    :try_start_4
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v5

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1437
    :try_start_5
    invoke-static {v4}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V

    .line 1438
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to add duplicate Conversation to Cache for threadId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new conv: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1442
    invoke-static {v4}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheAllThreads cache.replace failed on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1454
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    .line 1455
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1457
    :cond_4
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1458
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    .line 1459
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 1410
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 1429
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0

    .line 1449
    :cond_5
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1454
    :cond_6
    if-eqz v1, :cond_7

    .line 1455
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1457
    :cond_7
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1458
    const/4 v0, 0x0

    :try_start_c
    sput-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    .line 1459
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1463
    invoke-static {v6}, Lcom/android/mms/data/Conversation$Cache;->keepOnly(Ljava/util/Set;)V

    .line 1465
    const-string v0, "Mms:threadcache"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    const-string v0, "[Conversation] cacheAllThreads: finished"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1467
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->dumpCache()V

    goto/16 :goto_0

    .line 1459
    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    # getter for: Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->access$000(Lcom/android/mms/data/Conversation$Cache;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 153
    return-void
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static dump()V
    .locals 0

    .prologue
    .line 1507
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->dumpCache()V

    .line 1508
    return-void
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conv"    # Lcom/android/mms/data/Conversation;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "allowQuery"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1012
    monitor-enter p1

    .line 1013
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 1014
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/mms/data/Conversation;->mDate:J

    .line 1015
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p1, Lcom/android/mms/data/Conversation;->mMessageCount:I

    .line 1018
    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {p2, v5, v6}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "snippet":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1021
    const v5, 0x7f0b0010

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1023
    :cond_0
    iput-object v2, p1, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;

    .line 1025
    const/16 v5, 0x9

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    :goto_0
    invoke-direct {p1, v5}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 1026
    const/4 v5, 0x7

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_1
    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasError:Z

    .line 1027
    const/16 v5, 0x8

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    iput-boolean v3, p1, Lcom/android/mms/data/Conversation;->mHasAttachment:Z

    .line 1029
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I

    .line 1030
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/android/mms/data/Conversation;->mSubId:I

    .line 1032
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "recipientIds":Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1037
    .local v1, "recipients":Lcom/android/mms/data/ContactList;
    monitor-enter p1

    .line 1038
    :try_start_1
    iput-object v1, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 1039
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1041
    const-string v3, "Mms:threadcache"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    const-string v3, "Mms/conv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillFromCursor: conv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recipientIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_1
    return-void

    .end local v0    # "recipientIds":Ljava/lang/String;
    .end local v1    # "recipients":Lcom/android/mms/data/ContactList;
    :cond_2
    move v5, v4

    .line 1025
    goto :goto_0

    :cond_3
    move v5, v4

    .line 1026
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1027
    goto :goto_2

    .line 1032
    .end local v2    # "snippet":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1039
    .restart local v0    # "recipientIds":Ljava/lang/String;
    .restart local v1    # "recipients":Lcom/android/mms/data/ContactList;
    .restart local v2    # "snippet":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    .line 305
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 306
    .local v4, "threadId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 307
    invoke-static {v4, v5}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 308
    .local v0, "conv":Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 309
    invoke-static {p0, v0, p1, v10}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    move-object v1, v0

    .line 326
    .end local v0    # "conv":Lcom/android/mms/data/Conversation;
    .local v1, "conv":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 313
    .end local v1    # "conv":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, v10}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 314
    .restart local v0    # "conv":Lcom/android/mms/data/Conversation;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getMode(Landroid/content/Context;)Z

    move-result v3

    .line 316
    .local v3, "mode":Z
    if-eqz v3, :cond_1

    .line 317
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 326
    .restart local v1    # "conv":Ljava/lang/Object;
    goto :goto_0

    .line 319
    .end local v1    # "conv":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "Mms/conv"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tried to add duplicate Conversation to Cache (from cursor): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Converations.from cache.replace failed on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "allowQuery"    # Z

    .prologue
    const/4 v6, 0x0

    .line 170
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 171
    .local v0, "conv":Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 186
    .end local v0    # "conv":Lcom/android/mms/data/Conversation;
    .local v1, "conv":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 174
    .end local v1    # "conv":Ljava/lang/Object;
    .restart local v0    # "conv":Lcom/android/mms/data/Conversation;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0    # "conv":Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 175
    .restart local v0    # "conv":Lcom/android/mms/data/Conversation;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getMode(Landroid/content/Context;)Z

    move-result v3

    .line 177
    .local v3, "mode":Z
    if-eqz v3, :cond_1

    .line 178
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 186
    .restart local v1    # "conv":Ljava/lang/Object;
    goto :goto_0

    .line 180
    .end local v1    # "conv":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to add duplicate Conversation to Cache (from threadId): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get by threadId cache.replace failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowQuery"    # Z

    .prologue
    const/4 v7, 0x1

    .line 239
    if-nez p1, :cond_0

    .line 240
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 260
    :goto_0
    return-object v4

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 248
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 252
    .local v2, "threadId":J
    invoke-static {p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 253
    .end local v2    # "threadId":J
    :catch_0
    move-exception v0

    .line 254
    .local v0, "exception":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .end local v0    # "exception":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    const/16 v6, 0x3b

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "recipients":Ljava/lang/String;
    invoke-static {v1, p2, v7}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v4

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipients"    # Lcom/android/mms/data/ContactList;
    .param p2, "allowQuery"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ge v5, v7, :cond_1

    .line 199
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 203
    .local v0, "conv":Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_0

    .line 206
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v3

    .line 207
    .local v3, "threadId":J
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0    # "conv":Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, v3, v4, p2}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 208
    .restart local v0    # "conv":Lcom/android/mms/data/Conversation;
    const-string v5, "Mms/conv"

    const-string v6, "Conversation.get: created new conversation xxxxxxx"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 211
    const-string v5, "Mms/conv"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "Conversation.get: new conv\'s recipients don\'t match input recpients xxxxxxx"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getMode(Landroid/content/Context;)Z

    move-result v2

    .line 216
    .local v2, "mode":Z
    if-eqz v2, :cond_0

    .line 217
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to add duplicate Conversation to Cache (from recipients): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->replace(Lcom/android/mms/data/Conversation;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get by recipients cache.replace failed on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # Lcom/android/mms/data/ContactList;

    .prologue
    const/4 v9, 0x0

    .line 693
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 694
    .local v5, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 695
    .local v1, "cacheContact":Lcom/android/mms/data/Contact;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 696
    .local v0, "c":Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 697
    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    :cond_1
    sget-object v9, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 705
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Conversation getOrCreateThreadId for: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {p1, v10}, Lcom/android/mms/data/ContactList;->formatNamesAndNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " sDeletingThreads: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 709
    .local v3, "now":J
    :cond_2
    sget-boolean v8, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    .line 711
    :try_start_1
    sget-object v8, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    const-wide/16 v12, 0x7148

    cmp-long v8, v10, v12

    if-lez v8, :cond_2

    .line 717
    const-string v8, "Mms/conv"

    const-string v10, "getOrCreateThreadId timed out waiting for delete to complete"

    new-instance v11, Ljava/lang/Exception;

    invoke-direct {v11}, Ljava/lang/Exception;-><init>()V

    invoke-static {v8, v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    .line 723
    :cond_3
    invoke-static {p0, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v6

    .line 725
    .local v6, "retVal":J
    const-string v8, "[Conversation] getOrCreateThreadId for (%s) returned %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    monitor-exit v9

    return-wide v6

    .line 729
    .end local v3    # "now":J
    .end local v6    # "retVal":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 712
    .restart local v3    # "now":J
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 733
    sget-object v5, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 735
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conversation getOrCreateThreadId for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " sDeletingThreads: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 739
    .local v0, "now":J
    :cond_0
    sget-boolean v4, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 741
    :try_start_1
    sget-object v4, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x7148

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 747
    const-string v4, "Mms/conv"

    const-string v6, "getOrCreateThreadId timed out waiting for delete to complete"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    .line 753
    :cond_1
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 755
    .local v2, "retVal":J
    const-string v4, "[Conversation] getOrCreateThreadId for (%s) returned %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    monitor-exit v5

    return-wide v2

    .line 759
    .end local v0    # "now":J
    .end local v2    # "retVal":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 742
    .restart local v0    # "now":J
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getRecipients(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1493
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, "base":Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1495
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .end local v0    # "base":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "base":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "threadId"    # J

    .prologue
    .line 528
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$2;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$2;-><init>(Landroid/content/Context;)V

    const-string v2, "Conversation.init"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1278
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1279
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1280
    return-void
.end method

.method private loadFromThreadId(JZ)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1472
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1475
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v1, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 1478
    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromThreadId: fillFromCursor returned differnt thread_id! threadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mThreadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1489
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1483
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1487
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static loadingThreads()Z
    .locals 2

    .prologue
    .line 1396
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1397
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    monitor-exit v1

    return v0

    .line 1398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static markAllConversationsAsSeen(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1284
    const-string v1, "Mms/conv"

    const-string v2, "Conversation.markAllConversationsAsSeen"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Contact;->logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$3;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$3;-><init>(Landroid/content/Context;)V

    const-string v2, "Conversation.markAllConversationsAsSeen"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1300
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1301
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1302
    return-void
.end method

.method private sendReadReport(Landroid/content/Context;JI)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 340
    const-string v4, "m_type = 132 AND read = 0 AND rr = 128"

    .line 344
    .local v4, "selection":Ljava/lang/String;
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "m_id"

    aput-object v0, v3, v9

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 353
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 366
    :cond_1
    if-eqz v7, :cond_2

    .line 367
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_2
    :goto_0
    return-void

    .line 357
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 358
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 359
    .local v8, "uri":Landroid/net/Uri;
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendReadReport: uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :cond_4
    invoke-static {p1, v8}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p4}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 366
    .end local v8    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 367
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 366
    :cond_6
    if-eqz v7, :cond_2

    .line 367
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setHasUnreadMessages(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 662
    monitor-enter p0

    .line 663
    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    .line 664
    monitor-exit p0

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static showToast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1343
    sget-object v0, Lcom/android/mms/data/Conversation;->sToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/data/Conversation$4;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1351
    return-void
.end method

.method public static startDelete(Landroid/content/AsyncQueryHandler;IZJII)V
    .locals 6
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I
    .param p2, "deleteAll"    # Z
    .param p3, "threadId"    # J
    .param p5, "maxMmsId"    # I
    .param p6, "maxSmsId"    # I

    .prologue
    const/4 v2, 0x0

    .line 873
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 874
    .local v3, "uri":Landroid/net/Uri;
    if-eqz p2, :cond_2

    move-object v4, v2

    .line 876
    .local v4, "selection":Ljava/lang/String;
    :goto_0
    if-nez p5, :cond_0

    if-eqz p6, :cond_1

    .line 877
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mmsId"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 878
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "smsId"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_1
    move-object v0, p0

    move v1, p1

    move-object v5, v2

    .line 881
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 882
    return-void

    .line 874
    .end local v4    # "selection":Ljava/lang/String;
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method public static startDeleteAll(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZ)V
    .locals 7
    .param p0, "handler"    # Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    .param p1, "token"    # I
    .param p2, "deleteAll"    # Z

    .prologue
    const/4 v4, 0x0

    .line 893
    sget-object v6, Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 895
    :try_start_0
    const-string v0, "Mms/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversation startDeleteAll sDeletingThreads: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    if-eqz v0, :cond_0

    .line 899
    const-string v0, "Mms/conv"

    const-string v1, "startDeleteAll already in the middle of a delete"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->sDeletingThreads:Z

    .line 902
    if-eqz p2, :cond_1

    .line 904
    .local v4, "selection":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/PduLoaderManager;->clear()V

    .line 911
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->clear()V

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->setDeleteToken(I)V

    .line 914
    new-instance v2, Ljava/lang/Long;

    const-wide/16 v0, -0x1

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 915
    monitor-exit v6

    .line 916
    return-void

    .line 902
    .end local v4    # "selection":Ljava/lang/String;
    :cond_1
    const-string v4, "locked=0"

    goto :goto_0

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 8
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 824
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 831
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 811
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 812
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V
    .locals 3
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "threadId"    # J
    .param p3, "token"    # I

    .prologue
    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .restart local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_0
    invoke-static {p0, v0, p3}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 1002
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V
    .locals 15
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncQueryHandler;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 964
    .local p1, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 965
    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 967
    .local v4, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 968
    .local v6, "selection":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 969
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    .local v9, "buf":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 972
    .local v10, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 973
    .local v13, "threadId":J
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    if-lez v10, :cond_0

    .line 974
    const-string v1, " OR "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    :cond_0
    const-string v1, "thread_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 980
    .end local v13    # "threadId":J
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 982
    .end local v9    # "buf":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v5, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "date DESC"

    move-object v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public static verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1597
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifySingleRecipient threadId is ZERO, recipient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    .line 1663
    :cond_0
    :goto_0
    return-object p3

    .line 1602
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1604
    if-nez v1, :cond_2

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifySingleRecipient threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resulted in NULL cursor , recipient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1607
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto :goto_0

    .line 1613
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySingleRecipient threadId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can\'t moveToFirst , recipient: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1616
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1619
    :cond_3
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1621
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1623
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1625
    array-length v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1633
    aget-object v1, v2, v6

    invoke-static {p0, v1}, Lcom/android/mms/data/RecipientIdCache;->getSingleAddressFromCanonicalAddressInDb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1635
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifySingleRecipient threadId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " getSingleNumberFromCanonicalAddresses returned empty number for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recipientIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1639
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1621
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1642
    :cond_4
    invoke-static {p3, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1652
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySingleRecipient for threadId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " original recipient: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " recipient from DB: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1657
    :cond_5
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    .line 1658
    const-string v0, "Mms:threadcache"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySingleRecipient for threadId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " original recipient: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " recipient from DB: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object p3, v1

    .line 1663
    goto/16 :goto_0
.end method


# virtual methods
.method public blockMarkAsRead(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    const/4 v2, 0x0

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockMarkAsRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eq p1, v0, :cond_0

    .line 500
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    .line 501
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-nez v0, :cond_0

    .line 502
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v0, :cond_0

    .line 503
    iput-boolean v2, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    .line 504
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 508
    :cond_0
    return-void
.end method

.method public declared-synchronized clearThreadId()V
    .locals 3

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearThreadId old threadId was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now zero"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureThreadId()J
    .locals 7

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureThreadId before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iget-wide v3, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 551
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, "cc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 553
    .local v2, "remove":Z
    const-string v3, "Mms/conv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureThreadId recipientIds remove = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 547
    .end local v0    # "cc":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "remove":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 556
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 559
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureThreadId after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-wide v3, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v3
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Conversation;

    move-object v2, v0

    .line 771
    .local v2, "other":Lcom/android/mms/data/Conversation;
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    iget-object v4, v2, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 773
    .end local v2    # "other":Lcom/android/mms/data/Conversation;
    :goto_0
    monitor-exit p0

    return v3

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    goto :goto_0

    .line 770
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecipientsToCcNumbers(Z)[Ljava/lang/String;
    .locals 4
    .param p1, "scrubForMmsAddress"    # Z

    .prologue
    .line 1052
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    .local v1, "number":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1060
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1068
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1071
    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 1499
    iget v0, p0, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I

    return v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 518
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft()Z
    .locals 4

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 609
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    monitor-exit p0

    return v0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 779
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isChecked()Z
    .locals 1

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadRecipientsToCc()V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1076
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "thread_id"

    aput-object v2, v1, v3

    const-string v2, "_id"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Telephony$Mms;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1080
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v10, ""

    .line 1081
    .local v10, "msgId":Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1086
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1088
    .local v7, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1090
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "charset"

    aput-object v5, v3, v4

    const-string v4, "type=130"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1096
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    .line 1097
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1098
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    const-string v1, "address"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1108
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "msgId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 1109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 1102
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "msgId":Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    .line 1103
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v8, :cond_4

    .line 1109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1112
    :cond_4
    return-void
.end method

.method public markAsRead()V
    .locals 4

    .prologue
    .line 381
    const-string v1, "Mms/conv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markAsRead mMarkAsReadWaiting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMarkAsReadBlocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Contact;->logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 395
    .local v0, "threadUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/Conversation$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/data/Conversation$1;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V

    const-string v3, "Conversation.markAsRead worker thread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized setDraftState(Z)V
    .locals 4
    .param p1, "hasDraft"    # Z

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 620
    :goto_0
    monitor-exit p0

    return-void

    .line 619
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mIsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMessageCount(I)V
    .locals 1
    .param p1, "cnt"    # I

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 3
    .param p1, "list"    # Lcom/android/mms/data/ContactList;

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "Mms/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecipients before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 588
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 590
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const-string v0, "Mms/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecipients after: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_1
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRecipientsToCcNumbers(Ljava/util/List;)V
    .locals 0
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
    .line 1048
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mRecipientsToCcNumberList:Ljava/util/List;

    .line 1049
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 784
    monitor-enter p0

    :try_start_0
    const-string v0, "[%s] (tid %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
