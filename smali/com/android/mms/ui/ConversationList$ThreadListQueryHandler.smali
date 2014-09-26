.class final Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field private mDialog:Lcom/android/mms/ui/NewProgressDialog;

.field private progress:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 878
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 879
    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 3

    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/NewProgressDialog;->setDismiss(Z)V

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/NewProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    .line 922
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ConversationList"

    const-string v2, "ignore IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    .line 989
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 990
    packed-switch p1, :pswitch_data_0

    .line 1045
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 993
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_1
    # getter for: Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$1400()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 994
    # operator-- for: Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$1410()I

    .line 995
    const-string v6, "ConversationList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "igonre a onDeleteComplete,mDeleteCounter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$1400()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_1
    # setter for: Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I
    invoke-static {v10}, Lcom/android/mms/ui/ConversationList;->access$1402(I)I

    .line 1000
    if-eqz p2, :cond_3

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1002
    .local v4, "threadId":J
    :goto_1
    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    .line 1005
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 1020
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1024
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const-wide/16 v7, -0x2

    invoke-static {v6, v7, v8, v10}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1028
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 1031
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # invokes: Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)V

    .line 1033
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->progress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->dismissProgressDialog()V

    goto :goto_0

    .end local v4    # "threadId":J
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    move-wide v4, v6

    .line 1000
    goto :goto_1

    .line 1011
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v4    # "threadId":J
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v4, v5, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1012
    .local v1, "conv":Lcom/android/mms/data/Conversation;
    if-eqz v1, :cond_2

    .line 1013
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 1014
    .local v3, "recipients":Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1015
    .local v0, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->removeFromCache()V

    goto :goto_2

    .line 1041
    .end local v0    # "contact":Lcom/android/mms/data/Contact;
    .end local v1    # "conv":Lcom/android/mms/data/Conversation;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "recipients":Lcom/android/mms/data/ContactList;
    .end local v4    # "threadId":J
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_2
    const-string v6, "onQueryComplete finished DELETE_OBSOLETE_THREADS_TOKEN"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 926
    sparse-switch p1, :sswitch_data_0

    .line 983
    const-string v2, "ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 928
    :sswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 930
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 931
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0b00b2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 934
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DraftCache;->getSavingDraft()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1800(Lcom/android/mms/ui/ConversationList;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 935
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1800(Lcom/android/mms/ui/ConversationList;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 936
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # setter for: Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationList;->access$1802(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 945
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1700(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 948
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 950
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$1900(Lcom/android/mms/ui/ConversationList;)I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 952
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$1900(Lcom/android/mms/ui/ConversationList;)I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$2000(Lcom/android/mms/ui/ConversationList;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 954
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # setter for: Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I
    invoke-static {v2, v7}, Lcom/android/mms/ui/ConversationList;->access$1902(Lcom/android/mms/ui/ConversationList;I)I

    .line 957
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->invalidateOptionsMenu()V

    .line 958
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mTotalConvCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$2100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const v6, 0x7f0b01e8

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/ui/ConversationList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 962
    :sswitch_1
    const/4 v0, 0x0

    .line 963
    .local v0, "count":I
    if-eqz p3, :cond_6

    .line 964
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 965
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 967
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$2200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const v6, 0x7f0b01e9

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/ui/ConversationList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v0    # "count":I
    :sswitch_2
    move-object v1, p2

    .line 972
    check-cast v1, Ljava/util/Collection;

    .line 973
    .local v1, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v5, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v5, v1, v2, v6}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Landroid/content/Context;)V

    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    move v2, v3

    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5, v1, v2, v3}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 977
    if-eqz p3, :cond_0

    .line 978
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 973
    goto :goto_1

    .line 926
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x6a6 -> :sswitch_1
        0x70a -> :sswitch_2
    .end sparse-switch
.end method

.method protected progress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 902
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v1, :cond_0

    .line 903
    iget v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->progress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->progress:I

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v2}, Lcom/android/mms/ui/NewProgressDialog;->getMax()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 905
    :cond_0
    return v0
.end method

.method public setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/mms/ui/NewProgressDialog;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    .line 910
    return-void
.end method

.method public showProgressDialog()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->mDialog:Lcom/android/mms/ui/NewProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewProgressDialog;->show()V

    .line 900
    :cond_0
    return-void
.end method
