.class final Lcom/android/mms/data/Conversation$3;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/mms/data/Conversation$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1291
    const-string v0, "Mms/conv"

    const-string v1, "Conversation.markAllConversationsAsSeen.run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V

    .line 1294
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V

    .line 1297
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1298
    return-void
.end method
