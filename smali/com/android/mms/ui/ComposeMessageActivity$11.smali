.class Lcom/android/mms/ui/ComposeMessageActivity$11;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    const/16 v2, 0x43

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 843
    goto :goto_0

    .line 845
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 846
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 847
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    if-nez v0, :cond_3

    .line 848
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    move v0, v1

    .line 850
    goto :goto_0
.end method
