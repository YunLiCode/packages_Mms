.class public abstract Lcom/android/ex/chips/BaseRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseRecipientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;,
        Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;,
        Lcom/android/ex/chips/BaseRecipientAdapter$PhotoQuery;,
        Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentConstraint:Ljava/lang/CharSequence;

.field private final mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesUpdatedObserver:Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

.field private mEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExistingDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNonAggregatedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoCacheMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mPreferredMaxResultCount:I

.field private final mQuery:Lcom/android/ex/chips/Queries$Query;

.field private final mQueryType:I

.field private mRemainingDirectoryCount:I

.field private mTempEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I
    .param p3, "queryMode"    # I

    .prologue
    .line 521
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 436
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mHandler:Landroid/os/Handler;

    .line 498
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    .line 522
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 524
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 525
    iput p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    .line 526
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    .line 527
    iput p3, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryType:I

    .line 529
    if-nez p3, :cond_0

    .line 530
    sget-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    .line 537
    :goto_0
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 532
    sget-object v0, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    goto :goto_0

    .line 534
    :cond_1
    sget-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    .line 535
    const-string v0, "BaseRecipientAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->clearTempEntries()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/BaseRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/android/ex/chips/BaseRecipientAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/LinkedHashMap;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/Set;

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method private clearTempEntries()V
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    .line 730
    return-void
.end method

.method private constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .local p2, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    const/4 v7, 0x0

    .line 680
    .local v7, "validEntryCount":I
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 681
    .local v5, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 682
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 683
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 684
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientEntry;

    .line 685
    .local v1, "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-direct {p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcom/android/ex/chips/RecipientEntry;)V

    .line 687
    add-int/lit8 v7, v7, 0x1

    .line 683
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_1
    iget v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v7, v8, :cond_0

    .line 693
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .end local v3    # "i":I
    .end local v5    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .end local v6    # "size":I
    :cond_2
    iget v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-gt v7, v8, :cond_3

    .line 694
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientEntry;

    .line 695
    .restart local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    iget v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v7, v8, :cond_4

    .line 705
    .end local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_3
    return-object v0

    .line 698
    .restart local v1    # "entry":Lcom/android/ex/chips/RecipientEntry;
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-direct {p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcom/android/ex/chips/RecipientEntry;)V

    .line 701
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 12
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I
    .param p3, "directoryId"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 805
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v0}, Lcom/android/ex/chips/Queries$Query;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    add-int/lit8 v2, p2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 809
    .local v6, "builder":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 810
    const-string v0, "directory"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 814
    const-string v0, "name_for_primary_account"

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 815
    const-string v0, "type_for_primary_account"

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 817
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 818
    .local v10, "start":J
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 820
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 822
    .local v8, "end":J
    const-string v1, "BaseRecipientAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time for autocomplete (query: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", directoryId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", num_of_results: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v8, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-object v7

    .line 822
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "photoThumbnailUri"    # Landroid/net/Uri;

    .prologue
    .line 754
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$1;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Landroid/net/Uri;Lcom/android/ex/chips/RecipientEntry;)V

    .line 780
    .local v0, "photoLoadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 781
    return-void
.end method

.method private getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    goto :goto_0
.end method

.method private static putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 13
    .param p0, "entry"    # Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .param p1, "isAggregatedEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;",
            "Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p2, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .local p3, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .local p4, "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    if-nez p1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v10, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static/range {v1 .. v11}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    :cond_1
    iget-wide v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    iget-wide v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 654
    .local v12, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v10, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static/range {v1 .. v11}, Lcom/android/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    .end local v12    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .restart local v12    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v8, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v10, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static/range {v1 .. v11}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget-wide v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "directoryCursor"    # Landroid/database/Cursor;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 560
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v6, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    const/4 v7, 0x0

    .line 562
    .local v7, "preferredDirectory":Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 563
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 567
    .local v1, "id":J
    const-wide/16 v10, 0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_0

    .line 571
    new-instance v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    invoke-direct {v5}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;-><init>()V

    .line 572
    .local v5, "params":Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "packageName":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 574
    .local v8, "resourceId":I
    iput-wide v1, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    .line 575
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->displayName:Ljava/lang/String;

    .line 576
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    .line 577
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    .line 578
    if-eqz v4, :cond_1

    if-eqz v8, :cond_1

    .line 580
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 582
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    .line 583
    iget-object v10, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 584
    const-string v10, "BaseRecipientAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot resolve directory name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v10, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 598
    move-object v7, v5

    goto/16 :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "BaseRecipientAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot resolve directory name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 600
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 604
    .end local v1    # "id":J
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "params":Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    .end local v8    # "resourceId":I
    :cond_3
    if-eqz v7, :cond_4

    .line 605
    const/4 v10, 0x1

    invoke-interface {v6, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 608
    :cond_4
    return-object v6
.end method

.method private startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 619
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 620
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 621
    .local v2, "params":Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    iput-object p1, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->constraint:Ljava/lang/CharSequence;

    .line 622
    iget-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    if-nez v3, :cond_0

    .line 623
    new-instance v3, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-direct {v3, p0, v2}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V

    iput-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    .line 625
    :cond_0
    iget-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p3}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->setLimit(I)V

    .line 626
    iget-object v3, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->filter(Ljava/lang/CharSequence;)V

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v2    # "params":Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_1
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    .line 632
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    invoke-virtual {v3}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 633
    return-void
.end method

.method private tryFetchPhoto(Lcom/android/ex/chips/RecipientEntry;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;

    .prologue
    .line 737
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    .line 738
    .local v1, "photoThumbnailUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 739
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 740
    .local v0, "photoBytes":[B
    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 751
    .end local v0    # "photoBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 745
    .restart local v0    # "photoBytes":[B
    :cond_1
    const-string v2, "BaseRecipientAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No photo cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Fetch one asynchronously"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-direct {p0, p1, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private updateEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "newEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    .line 720
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntriesUpdatedObserver:Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    invoke-interface {v0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;->onChanged(Ljava/util/List;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 722
    return-void
.end method


# virtual methods
.method protected fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/ex/chips/RecipientEntry;
    .param p2, "photoThumbnailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 784
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 785
    .local v6, "photoBytes":[B
    if-eqz v6, :cond_1

    .line 786
    invoke-virtual {p1, v6}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/ex/chips/BaseRecipientAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 791
    .local v7, "photoCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 793
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 795
    invoke-virtual {p1, v6}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 796
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/util/LruCache;

    invoke-virtual {v0, p2, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 842
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDefaultPhotoResource()I
    .locals 1

    .prologue
    .line 944
    sget v0, Lcom/android/ex/chips/R$drawable;->ic_contact_picture:I

    return v0
.end method

.method protected getDestinationId()I
    .locals 1

    .prologue
    .line 961
    const v0, 0x1020014

    return v0
.end method

.method protected getDestinationTypeId()I
    .locals 1

    .prologue
    .line 969
    const v0, 0x1020015

    return v0
.end method

.method protected getDisplayNameId()I
    .locals 1

    .prologue
    .line 952
    const v0, 0x1020016

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 554
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 852
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 936
    sget v0, Lcom/android/ex/chips/R$layout;->chips_recipient_dropdown_item:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v0

    return v0
.end method

.method protected getPhotoId()I
    .locals 1

    .prologue
    .line 977
    const v0, 0x1020006

    return v0
.end method

.method public getQueryType()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQueryType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientEntry;

    .line 873
    .local v7, "entry":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 874
    .local v5, "displayName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "destination":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 876
    :cond_0
    move-object v5, v1

    .line 880
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 881
    const/4 v1, 0x0

    .line 885
    :cond_1
    if-eqz p2, :cond_4

    move-object/from16 v9, p2

    .line 887
    .local v9, "itemView":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDisplayNameId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 888
    .local v6, "displayNameView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDestinationId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 889
    .local v4, "destinationView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDestinationTypeId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 891
    .local v3, "destinationTypeView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getPhotoId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 892
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 894
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    :goto_1
    if-eqz v3, :cond_2

    .line 899
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDestinationType()I

    move-result v14

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getDestinationLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/ex/chips/Queries$Query;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "destinationType":Ljava/lang/CharSequence;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    .end local v2    # "destinationType":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 907
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 908
    if-eqz v8, :cond_3

    .line 909
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v11

    .line 911
    .local v11, "photoBytes":[B
    if-eqz v11, :cond_6

    .line 912
    const/4 v12, 0x0

    array-length v13, v11

    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 914
    .local v10, "photo":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 925
    .end local v10    # "photo":Landroid/graphics/Bitmap;
    .end local v11    # "photoBytes":[B
    :cond_3
    :goto_2
    return-object v9

    .line 885
    .end local v3    # "destinationTypeView":Landroid/widget/TextView;
    .end local v4    # "destinationView":Landroid/widget/TextView;
    .end local v6    # "displayNameView":Landroid/widget/TextView;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "itemView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItemLayout()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 896
    .restart local v3    # "destinationTypeView":Landroid/widget/TextView;
    .restart local v4    # "destinationView":Landroid/widget/TextView;
    .restart local v6    # "displayNameView":Landroid/widget/TextView;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    .restart local v9    # "itemView":Landroid/view/View;
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 916
    .restart local v11    # "photoBytes":[B
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getDefaultPhotoResource()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 920
    .end local v11    # "photoBytes":[B
    :cond_7
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 921
    if-eqz v8, :cond_3

    .line 922
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public registerUpdateObserver(Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter;->mEntriesUpdatedObserver:Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    .line 715
    return-void
.end method
