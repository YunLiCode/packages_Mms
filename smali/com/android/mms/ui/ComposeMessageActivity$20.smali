.class Lcom/android/mms/ui/ComposeMessageActivity$20;
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
    .line 1405
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x0

    .line 1429
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1430
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "afterTextChanged called with invisible mRecipientsEditor"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v4, "Mms/compose"

    const-string v5, "RecipientsWatcher: afterTextChanged called with invisible mRecipientsEditor"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 1440
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1442
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1446
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsProcessPickedRecipients:Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1451
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1452
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1453
    .local v1, "contacts":Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 1456
    .end local v1    # "contacts":Lcom/android/mms/data/ContactList;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1459
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v5

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 1460
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;
    invoke-static {v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4802(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    .line 1479
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 1464
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "pos":I
    :goto_2
    if-ltz v3, :cond_3

    .line 1465
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1466
    .local v0, "c":C
    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    .line 1464
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1468
    :cond_5
    const/16 v4, 0x2c

    if-ne v0, v4, :cond_3

    .line 1469
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1471
    .restart local v1    # "contacts":Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1408
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$20;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 1417
    return-void
.end method
