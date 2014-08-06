.class Lcom/android/mms/ui/ComposeMessageActivity$45$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

.field final synthetic val$list:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$45;Lcom/android/mms/data/ContactList;)V
    .locals 0

    .prologue
    .line 4757
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4762
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 4764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4765
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 4766
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$45;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45$1;->val$list:Lcom/android/mms/data/ContactList;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 4767
    return-void
.end method
