.class Lcom/android/mms/ui/ComposeMessageActivity$64;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$updated:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0

    .prologue
    .line 6463
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->val$updated:Lcom/android/mms/data/Contact;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6466
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6468
    .local v0, "recipients":Lcom/android/mms/data/ContactList;
    :goto_0
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMA] onUpdate contact updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CMA] onUpdate recipients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6472
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 6476
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 6483
    return-void

    .line 6466
    .end local v0    # "recipients":Lcom/android/mms/data/ContactList;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    goto :goto_0
.end method
