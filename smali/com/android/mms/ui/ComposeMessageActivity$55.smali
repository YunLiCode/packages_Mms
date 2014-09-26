.class Lcom/android/mms/ui/ComposeMessageActivity$55;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 5268
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$cursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5271
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5272
    .local v2, "groupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 5273
    const-string v3, "com.android.contacts.action.MULTI_PICK_GROUP_MEMBERS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5274
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5275
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$cursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 5276
    .local v0, "groupId":J
    const-string v3, "_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5282
    .end local v0    # "groupId":J
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 5283
    const-string v3, "Mms/compose"

    const-string v4, "baijianhua close cursor in add group"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5288
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v4, 0x75

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5289
    return-void

    .line 5278
    :cond_1
    const-string v3, "com.android.contacts.action.MULTI_PICK_PHONE_AND_EMAIL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5279
    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
