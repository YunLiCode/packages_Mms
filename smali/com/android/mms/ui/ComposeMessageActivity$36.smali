.class Lcom/android/mms/ui/ComposeMessageActivity$36;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onProtocolChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$convertToMms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    .prologue
    .line 3871
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$convertToMms:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3875
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$convertToMms:Z

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3876
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$convertToMms:Z

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7900(Lcom/android/mms/ui/ComposeMessageActivity;Z)Landroid/view/View;

    .line 3877
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$convertToMms:Z

    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3878
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3879
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$convertToMms:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3881
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->val$convertToMms:Z

    if-eqz v0, :cond_1

    .line 3885
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3889
    :cond_1
    return-void
.end method
