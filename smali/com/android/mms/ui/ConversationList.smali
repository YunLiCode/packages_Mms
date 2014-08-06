.class public Lcom/android/mms/ui/ConversationList;
.super Landroid/app/ListActivity;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$ModeCallback;,
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    }
.end annotation


# static fields
.field private static isCheckBox:Z

.field private static mDeleteCounter:I


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private final mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

.field private mDoOnceAfterFirstQuery:Z

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mMultiChoiceMode:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTotalConvCount:Landroid/widget/TextView;

.field private mUnreadConvCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    sput v0, Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I

    .line 128
    sput-boolean v0, Lcom/android/mms/ui/ConversationList;->isCheckBox:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mMultiChoiceMode:Z

    .line 229
    new-instance v0, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 401
    new-instance v0, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 566
    new-instance v0, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 752
    new-instance v0, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 836
    new-instance v0, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    .line 1048
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 91
    sput p0, Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I

    return p0
.end method

.method static synthetic access$1408()I
    .locals 2

    .prologue
    .line 91
    sget v0, Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$1410()I
    .locals 2

    .prologue
    .line 91
    sget v0, Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/ConversationList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mTotalConvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 91
    sput-boolean p0, Lcom/android/mms/ui/ConversationList;->isCheckBox:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    return-object v0
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .param p0, "threadId"    # J
    .param p2, "handler"    # Landroid/content/AsyncQueryHandler;

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .restart local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_0
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 658
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
    .locals 15
    .param p0, "listener"    # Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    .param p2, "hasLockedMessages"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/ConversationList$DeleteThreadListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const v1, 0x7f04000c

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 686
    .local v10, "contents":Landroid/view/View;
    const v1, 0x7f0a0039

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 688
    .local v13, "msg":Landroid/widget/TextView;
    if-nez p1, :cond_4

    .line 689
    const v1, 0x7f0b00aa

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 697
    :goto_0
    const v1, 0x7f0a003a

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 698
    .local v8, "checkbox":Landroid/widget/CheckBox;
    if-nez p2, :cond_5

    .line 699
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 711
    :goto_1
    const/4 v11, 0x0

    .line 712
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 713
    .local v14, "smsId":I
    const/4 v12, 0x0

    .line 714
    .local v12, "mmsId":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max(_id)"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 716
    if-eqz v11, :cond_1

    .line 718
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 720
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmDeleteThreadDialog max SMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 724
    const/4 v11, 0x0

    .line 727
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max(_id)"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 729
    if-eqz v11, :cond_3

    .line 731
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 733
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmDeleteThreadDialog max MMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 736
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 737
    const/4 v11, 0x0

    .line 740
    :cond_3
    invoke-virtual {p0, v12, v14}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setMaxMsgId(II)V

    .line 742
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 743
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b00a7

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b007e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 750
    return-void

    .line 692
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "checkbox":Landroid/widget/CheckBox;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "mmsId":I
    .end local v14    # "smsId":I
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v9

    .line 693
    .local v9, "cnt":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 701
    .end local v9    # "cnt":I
    .restart local v8    # "checkbox":Landroid/widget/CheckBox;
    :cond_5
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 702
    new-instance v1, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v1, p0, v8}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 723
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "mmsId":I
    .restart local v14    # "smsId":I
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 724
    const/4 v11, 0x0

    .line 723
    throw v1

    .line 736
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 737
    const/4 v11, 0x0

    .line 736
    throw v1
.end method

.method public static confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/content/AsyncQueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const/16 v0, 0x70a

    invoke-static {p1, p0, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 670
    return-void
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 552
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    :goto_0
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 563
    return-object v0

    .line 557
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStorageMemoryIsFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const v0, 0x7f0b00ed

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getExitDialogueSign()Z
    .locals 1

    .prologue
    .line 771
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->isCheckBox:Z

    return v0
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 242
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1129
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    return-void
.end method

.method private openThread(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 547
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 548
    return-void
.end method

.method public static setExitDialogueSign()V
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationList;->isCheckBox:Z

    .line 776
    return-void
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    .line 216
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 218
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 220
    .local v1, "v":Landroid/view/ViewGroup;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 222
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 227
    return-void
.end method

.method private startAsyncQuery()V
    .locals 4

    .prologue
    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 394
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a6

    const-string v3, "read=0"

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 642
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    .line 598
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 599
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 600
    invoke-static {p0, v3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 601
    .local v2, "conv":Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    .line 602
    .local v5, "threadId":J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 627
    .end local v2    # "conv":Lcom/android/mms/data/Conversation;
    .end local v5    # "threadId":J
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7

    .line 604
    .restart local v2    # "conv":Lcom/android/mms/data/Conversation;
    .restart local v5    # "threadId":J
    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 608
    :pswitch_1
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0

    .line 612
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 613
    .local v1, "contact":Lcom/android/mms/data/Contact;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 614
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x80000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 619
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v2, 0x7f040009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->setContentView(I)V

    .line 141
    const v2, 0x7f0a0036

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    .line 142
    const v2, 0x7f0a0037

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mTotalConvCount:Landroid/widget/TextView;

    .line 144
    new-instance v2, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 147
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 148
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 149
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 150
    new-instance v2, Lcom/android/mms/ui/ConversationList$ModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationList$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 153
    const v2, 0x7f0a0038

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 157
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->setupActionBar()V

    .line 159
    const/high16 v2, 0x7f0b0000

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->setTitle(I)V

    .line 161
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    .line 163
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "checked_message_limits"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 165
    .local v0, "checkedMessageLimits":Z
    if-eqz v0, :cond_0

    .line 169
    :goto_0
    if-eqz p1, :cond_1

    .line 170
    const-string v2, "last_list_pos"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 172
    const-string v2, "last_list_offset"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 177
    :goto_1
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V

    goto :goto_0

    .line 174
    :cond_1
    iput v5, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 175
    iput v4, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 420
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f0f0000

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 422
    const v2, 0x7f0a00ba

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    .line 423
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    .line 425
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 426
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0b011e

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 428
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 430
    .local v1, "searchManager":Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 432
    .local v0, "info":Landroid/app/SearchableInfo;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 456
    .end local v0    # "info":Landroid/app/SearchableInfo;
    :cond_0
    return v4
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 372
    invoke-static {}, Lcom/android/mms/data/Contact;->clearListener()V

    .line 373
    invoke-static {}, Lcom/android/mms/data/Conversation;->clearCache()V

    .line 374
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .param p1, "threadId"    # J
    .param p3, "hasDraft"    # Z

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 528
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {p0, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 529
    .local v0, "conv":Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 535
    .local v2, "tid":J
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    .line 536
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 313
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 485
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 513
    :pswitch_0
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    .line 487
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    .line 515
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 491
    :pswitch_2
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_1

    .line 494
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_1

    .line 498
    :pswitch_4
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto :goto_1

    .line 485
    :pswitch_data_0
    .packed-switch 0x7f0a00b9
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 192
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 194
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 202
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_1

    :goto_0
    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 205
    invoke-static {}, Lcom/android/mms/data/Contact;->clearListener()V

    .line 206
    return-void

    .line 204
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 461
    const v1, 0x7f0a00bc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 462
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 466
    :cond_0
    const v1, 0x7f0a00bd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_1

    .line 468
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 471
    :cond_1
    return v2

    :cond_2
    move v1, v3

    .line 463
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 213
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v0, "last_list_pos"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v0, "last_list_offset"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mMultiChoiceMode:Z

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 480
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 319
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 324
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    .line 328
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 343
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 346
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 352
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 359
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 361
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 366
    return-void
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    const-string v2, "ConversationList.runOneTimeStorageLimitCheckForLegacyMessages"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
