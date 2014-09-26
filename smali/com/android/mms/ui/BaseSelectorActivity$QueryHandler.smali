.class public final Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "BaseSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BaseSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mParent:Lcom/android/mms/ui/BaseSelectorActivity;

.field final synthetic this$0:Lcom/android/mms/ui/BaseSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BaseSelectorActivity;Landroid/content/ContentResolver;Lcom/android/mms/ui/BaseSelectorActivity;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "parent"    # Lcom/android/mms/ui/BaseSelectorActivity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    .line 353
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 354
    iput-object p3, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->mParent:Lcom/android/mms/ui/BaseSelectorActivity;

    .line 355
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 379
    packed-switch p1, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BaseSelectorActivity;->setResult(I)V

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseSelectorActivity;->finish()V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 359
    packed-switch p1, :pswitch_data_0

    .line 367
    if-eqz p3, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    new-instance v3, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v5, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->mParent:Lcom/android/mms/ui/BaseSelectorActivity;

    invoke-direct {v3, v4, v5, p3}, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;-><init>(Lcom/android/mms/ui/BaseSelectorActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, v2, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v3, v3, Lcom/android/mms/ui/BaseSelectorActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BaseSelectorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v2, v2, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v1, v1, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v1, v1, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v1, v1, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    :cond_1
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 361
    check-cast v0, Ljava/util/Collection;

    .line 362
    .local v0, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v3, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    iget-object v3, v3, Lcom/android/mms/ui/BaseSelectorActivity;->mQueryHandler:Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->mParent:Lcom/android/mms/ui/BaseSelectorActivity;

    invoke-direct {v2, v0, v3, v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Landroid/content/Context;)V

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->mParent:Lcom/android/mms/ui/BaseSelectorActivity;

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 364
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x70a
        :pswitch_0
    .end packed-switch
.end method
