.class Lcom/android/mms/ui/SmsSelectorActivity$8;
.super Ljava/lang/Object;
.source "SmsSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSelectorActivity;->setDialogParameter(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;

.field final synthetic val$pos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->val$pos:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 372
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    .line 373
    .local v3, "items":[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 374
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v6, v5, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 375
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-direct {v2, v5}, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;-><init>(Lcom/android/mms/ui/SmsSelectorActivity;)V

    .line 376
    .local v2, "item":Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;
    const-string v5, "address"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mAddress:Ljava/lang/String;

    .line 377
    const-string v5, "body"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mBody:Ljava/lang/String;

    .line 378
    const-string v5, "date"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mDate:Ljava/lang/Long;

    .line 379
    const-string v5, "sub_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mSubId:I

    .line 380
    const-string v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v2, Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;->mStatus:I

    .line 381
    aput-object v2, v3, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "item":Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/SmsSelectorActivity$8;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d1

    invoke-static {v5, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 384
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 385
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 386
    return-void
.end method
