.class final Lcom/android/mms/transaction/MessagingNotification$6;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
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
    .line 1469
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$6;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1472
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$6;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I
    invoke-static {v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->access$400(Landroid/content/Context;[J)I

    move-result v1

    .line 1473
    .local v1, "result":I
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mUpdateSendFailedNotification:Landroid/os/Handler;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1474
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1475
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$6;->val$context:Landroid/content/Context;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1476
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1477
    return-void
.end method
