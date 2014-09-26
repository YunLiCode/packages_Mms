.class public Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;
.super Landroid/widget/CursorAdapter;
.source "BaseSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BaseSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SelectorListAdapter"
.end annotation


# instance fields
.field mSelectorListAdapter:Landroid/widget/CursorAdapter;

.field final synthetic this$0:Lcom/android/mms/ui/BaseSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BaseSelectorActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 390
    iput-object p1, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    .line 391
    invoke-direct {p0, p2, p3, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 389
    iput-object v5, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->mSelectorListAdapter:Landroid/widget/CursorAdapter;

    .line 392
    iget v0, p1, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_1

    .line 393
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    invoke-direct {v0, p1, p3}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->mSelectorListAdapter:Landroid/widget/CursorAdapter;

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-boolean v0, p1, Lcom/android/mms/ui/BaseSelectorActivity;->isConversationMessage:Z

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {p1}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->mSelectorListAdapter:Landroid/widget/CursorAdapter;

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->mSelectorListAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setSimMessage(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 404
    iget-object v7, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->mSelectorListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v7, p1, p2, p3}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 405
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 406
    .local v3, "id":J
    iget-object v7, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    # getter for: Lcom/android/mms/ui/BaseSelectorActivity;->mCheckedItems:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/mms/ui/BaseSelectorActivity;->access$000(Lcom/android/mms/ui/BaseSelectorActivity;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 407
    .local v2, "contain":Z
    iget-object v7, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->this$0:Lcom/android/mms/ui/BaseSelectorActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/BaseSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 408
    .local v5, "isPopStyle":Z
    const v7, 0x7f0a0065

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 409
    .local v0, "btn":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 412
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 413
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 415
    :cond_0
    if-eqz v5, :cond_4

    .line 416
    const v7, 0x7f0a0001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 417
    .local v1, "checkBox":Landroid/widget/CheckBox;
    if-nez v1, :cond_2

    .line 438
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    :goto_0
    return-void

    .line 420
    .restart local v1    # "checkBox":Landroid/widget/CheckBox;
    :cond_2
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 421
    if-eqz v2, :cond_3

    .line 422
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 424
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 427
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    :cond_4
    const v7, 0x7f0a0002

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 428
    .local v6, "msgBlockView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 431
    if-eqz v2, :cond_5

    .line 432
    const v7, 0x7f02008b

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 434
    :cond_5
    const v7, 0x7f020031

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->mSelectorListAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->mSelectorListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
