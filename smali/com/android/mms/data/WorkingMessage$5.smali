.class Lcom/android/mms/data/WorkingMessage$5;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$isStopping:Z


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1951
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    iput-boolean p3, p0, Lcom/android/mms/data/WorkingMessage$5;->val$isStopping:Z

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$5;->val$contents:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1955
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1956
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1957
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    const-string v0, "asyncUpdateDraftSmsMessage no recipients, not saving"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1966
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1968
    :goto_0
    return-void

    .line 1962
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$isStopping:Z

    # invokes: Lcom/android/mms/data/WorkingMessage;->ensureThreadIdIfNeeded(Lcom/android/mms/data/Conversation;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$1400(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Z)V

    .line 1963
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1964
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$contents:Ljava/lang/String;

    # invokes: Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$1600(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v0
.end method
