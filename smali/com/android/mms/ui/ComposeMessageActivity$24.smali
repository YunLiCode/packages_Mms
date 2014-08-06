.class Lcom/android/mms/ui/ComposeMessageActivity$24;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 2094
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2096
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "exit_on_sent"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2097
    const-string v2, "forwarded_message"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2098
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6100(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2099
    const-string v2, "thread_id"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6100(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2102
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2103
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2119
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2121
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2122
    return-void

    .line 2105
    :cond_1
    const-string v2, "msg_uri"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2106
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f0b0055

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2107
    .local v1, "subject":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2110
    :cond_2
    const-string v2, "subject"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
