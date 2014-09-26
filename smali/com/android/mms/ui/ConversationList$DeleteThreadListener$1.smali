.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 808
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/DeleteProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V

    .line 810
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->showProgressDialog()V

    .line 813
    :cond_0
    const/16 v1, 0x709

    .line 814
    .local v1, "token":I
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1300(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/Conversation;->startDeleteAll(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZ)V

    .line 816
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 830
    :cond_1
    return-void

    .line 821
    :cond_2
    # setter for: Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I
    invoke-static {v8}, Lcom/android/mms/ui/ConversationList;->access$1402(I)I

    .line 822
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 823
    .local v3, "threadId":J
    # operator++ for: Lcom/android/mms/ui/ConversationList;->mDeleteCounter:I
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$1408()I

    .line 824
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1300(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->maxMmsId:I
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1500(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->maxSmsId:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJII)V

    .line 826
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v8}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_0
.end method
