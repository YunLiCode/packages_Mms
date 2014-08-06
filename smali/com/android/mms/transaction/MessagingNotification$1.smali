.class final Lcom/android/mms/transaction/MessagingNotification$1;
.super Landroid/os/Handler;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 228
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 229
    .local v0, "args":Landroid/content/Context;
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$100()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 230
    .local v1, "currentConversation":Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 232
    .end local v0    # "args":Landroid/content/Context;
    .end local v1    # "currentConversation":Lcom/android/mms/data/Conversation;
    :cond_0
    return-void
.end method
