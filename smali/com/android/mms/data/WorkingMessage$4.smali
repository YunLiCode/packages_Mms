.class Lcom/android/mms/data/WorkingMessage$4;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$isStopping:Z

.field final synthetic val$preOpenedFiles:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/util/HashMap;Z)V
    .locals 0

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    iput-boolean p4, p0, Lcom/android/mms/data/WorkingMessage$4;->val$isStopping:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1814
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1816
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1817
    .local v0, "persister":Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$900(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;

    move-result-object v3

    # invokes: Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1819
    .local v1, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1820
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    # invokes: Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;
    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->access$1200(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v6, v2}, Lcom/android/mms/data/WorkingMessage;->access$1002(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1826
    :goto_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage$4;->val$isStopping:Z

    # invokes: Lcom/android/mms/data/WorkingMessage;->ensureThreadIdIfNeeded(Lcom/android/mms/data/Conversation;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$1400(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Z)V

    .line 1827
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1828
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncUpdateDraftMmsMessage conv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1835
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1838
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    # invokes: Lcom/android/mms/data/WorkingMessage;->closePreOpenedFiles(Ljava/util/HashMap;)V
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$1500(Ljava/util/HashMap;)V

    .line 1840
    return-void

    .line 1823
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    # invokes: Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/mms/data/WorkingMessage;->access$1300(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1837
    .end local v0    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    .end local v1    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1838
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    # invokes: Lcom/android/mms/data/WorkingMessage;->closePreOpenedFiles(Ljava/util/HashMap;)V
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$1500(Ljava/util/HashMap;)V

    throw v2
.end method
