.class public Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationQueryHandler"
.end annotation


# instance fields
.field private mDeleteToken:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 923
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 934
    iget v0, p0, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    if-ne p1, v0, :cond_0

    .line 942
    # getter for: Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 943
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$902(Z)Z

    .line 945
    const-string v0, "Mms/conv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversation onDeleteComplete sDeletingThreads: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$900()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    # getter for: Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$800()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 949
    monitor-exit v1

    .line 951
    :cond_0
    return-void

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeleteToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 926
    iput p1, p0, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    .line 927
    return-void
.end method
