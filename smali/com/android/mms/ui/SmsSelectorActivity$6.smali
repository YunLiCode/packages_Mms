.class Lcom/android/mms/ui/SmsSelectorActivity$6;
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
    .line 297
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->val$pos:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 300
    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 301
    .local v3, "len":I
    new-array v2, v3, [Ljava/lang/Object;

    .line 302
    .local v2, "items":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 303
    .local v4, "lockedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 304
    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v10, v9, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->val$pos:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 305
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-boolean v9, v9, Lcom/android/mms/ui/BaseSelectorActivity;->isConversationMessage:Z

    if-eqz v9, :cond_0

    .line 306
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 307
    .local v6, "msgId":J
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "type":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v9, v9, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    check-cast v9, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;

    invoke-virtual {v9, v8, v6, v7, v0}, Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    aput-object v9, v2, v1

    .line 303
    .end local v6    # "msgId":J
    .end local v8    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$6;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 319
    .local v5, "message":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 321
    return-void
.end method
