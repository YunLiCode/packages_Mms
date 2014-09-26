.class public Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnDeletedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "Mms:app"

    const-string v2, "[MessagingNotification] clear notification: mark all msgs seen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver$1;-><init>(Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;Landroid/content/Context;)V

    const-string v2, "Conversation.markAllConversationsAsSeen"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 192
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    return-void
.end method
