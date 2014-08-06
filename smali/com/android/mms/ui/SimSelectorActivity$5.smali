.class Lcom/android/mms/ui/SimSelectorActivity$5;
.super Ljava/lang/Object;
.source "SimSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SimSelectorActivity;->setDialogParameter(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SimSelectorActivity;

.field final synthetic val$pos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimSelectorActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/mms/ui/SimSelectorActivity$5;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SimSelectorActivity$5;->val$pos:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 188
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$5;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 189
    .local v3, "len":I
    new-array v2, v3, [Ljava/lang/String;

    .line 190
    .local v2, "ids":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 191
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$5;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iget-object v7, v6, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$5;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 192
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v6, "index_on_icc"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "messageIndexString":Ljava/lang/String;
    aput-object v5, v2, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v5    # "messageIndexString":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$5;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    # getter for: Lcom/android/mms/ui/SimSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/SimSelectorActivity;->access$000(Lcom/android/mms/ui/SimSelectorActivity;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3eb

    invoke-static {v6, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 196
    .local v4, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 197
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 198
    return-void
.end method
