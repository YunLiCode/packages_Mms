.class final Lcom/android/mms/data/WorkingMessage$1;
.super Landroid/os/AsyncTask;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msg:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$onDraftLoaded:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 7
    .param p1, "none"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/mms/data/WorkingMessage;->access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "draftText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 374
    .local v3, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;
    invoke-static {v5, v6, v2}, Lcom/android/mms/data/WorkingMessage;->access$200(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v4

    .line 378
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 379
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5, v4}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 392
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    # setter for: Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z
    invoke-static {v0, v2}, Lcom/android/mms/data/WorkingMessage;->access$302(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 394
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    # setter for: Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    invoke-static {v0, v2}, Lcom/android/mms/data/WorkingMessage;->access$402(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 398
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 405
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
