.class Lcom/android/mms/ui/ComposeMessageActivity$57;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 5412
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 5437
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 5414
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5418
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "befor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 5420
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->alreadyMaxSubject:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5421
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0b01ea

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5422
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->alreadyMaxSubject:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 5425
    :cond_0
    if-nez p2, :cond_1

    .line 5426
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 5433
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5434
    return-void

    .line 5430
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->alreadyMaxSubject:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 5431
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
