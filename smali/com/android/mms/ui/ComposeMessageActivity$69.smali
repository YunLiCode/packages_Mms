.class Lcom/android/mms/ui/ComposeMessageActivity$69;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onAddCc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$booleans:[Z

.field final synthetic val$numbers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6714
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$booleans:[Z

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$numbers:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v9, 0x1

    .line 6719
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6720
    .local v6, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 6721
    .local v4, "index":I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$booleans:[Z

    .local v1, "arr$":[Z
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-boolean v2, v1, v3

    .line 6722
    .local v2, "b":Z
    if-eqz v2, :cond_0

    .line 6723
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$numbers:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6725
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 6721
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6727
    .end local v2    # "b":Z
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$booleans:[Z

    array-length v7, v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 6728
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f0b01b7

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 6764
    :cond_2
    :goto_1
    return-void

    .line 6732
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 6733
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/mms/data/Conversation;->setRecipientsToCcNumbers(Ljava/util/List;)V

    .line 6737
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 6739
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 6742
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v7

    if-nez v7, :cond_2

    .line 6743
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v8, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V
    invoke-static {v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_1

    .line 6747
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/mms/data/Conversation;->setRecipientsToCcNumbers(Ljava/util/List;)V

    .line 6751
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 6752
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 6755
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->val$booleans:[Z

    array-length v5, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-boolean v0, v1, v3

    .line 6756
    .local v0, "aBoolean":Z
    if-eqz v0, :cond_5

    .line 6757
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V
    invoke-static {v7, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 6758
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 6759
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$69;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 6755
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
