.class Lcom/android/mms/ui/SearchActivity$3;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 291
    if-nez p3, :cond_1

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    aput-object v13, v5, v12

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string v1, "thread_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 300
    .local v8, "threadIdPos":I
    const-string v1, "address"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 301
    .local v6, "addressPos":I
    const-string v1, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 302
    .local v7, "bodyPos":I
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 304
    .local v9, "rowidPos":I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 305
    .local v10, "cursorCount":I
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-object v12, p0, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    aput-object v12, v4, v5

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v12, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    new-instance v1, Lcom/android/mms/ui/SearchActivity$3$1;

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/ui/SearchActivity$3$1;-><init>(Lcom/android/mms/ui/SearchActivity$3;Landroid/content/Context;Landroid/database/Cursor;ZIIII)V

    invoke-virtual {v12, v1}, Lcom/android/mms/ui/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 397
    if-lez v10, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mms/MmsApp;

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v11

    .line 399
    .local v11, "recent":Landroid/provider/SearchRecentSuggestions;
    if-eqz v11, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v3, 0x7f0b0122

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-object v12, p0, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    aput-object v12, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
