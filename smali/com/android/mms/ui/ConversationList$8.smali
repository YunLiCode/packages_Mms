.class Lcom/android/mms/ui/ConversationList$8;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 839
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeleteObsoleteThreadsRunnable getSavingDraft(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->getSavingDraft()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->getSavingDraft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    const-string v0, "mDeleteObsoleteThreadsRunnable saving draft, trying again"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$1700(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 863
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiverService;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    const-string v0, "ConversationList"

    const-string v1, "inserting sms ,do this 1000ms later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$1700(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 857
    :cond_2
    const-string v0, "mDeleteObsoleteThreadsRunnable calling asyncDeleteObsoleteThreads"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v0

    const/16 v1, 0x70b

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0
.end method
