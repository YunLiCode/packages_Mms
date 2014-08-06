.class Lcom/android/mms/ui/SmsSelectorActivity$9;
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
    .line 391
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$9;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$9;->val$pos:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 394
    iget-object v6, p0, Lcom/android/mms/ui/SmsSelectorActivity$9;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 395
    .local v3, "len":I
    new-array v2, v3, [Ljava/lang/String;

    .line 396
    .local v2, "ids":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 397
    iget-object v6, p0, Lcom/android/mms/ui/SmsSelectorActivity$9;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v7, v6, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    iget-object v6, p0, Lcom/android/mms/ui/SmsSelectorActivity$9;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 398
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v6, "index_on_icc"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "messageIndexString":Ljava/lang/String;
    aput-object v5, v2, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v5    # "messageIndexString":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SmsSelectorActivity$9;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-static {v6, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 402
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 403
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 404
    return-void
.end method
