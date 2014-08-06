.class Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;
.super Ljava/lang/Thread;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyToSimThread"
.end annotation


# instance fields
.field private msgItem:Lcom/android/mms/ui/MessageItem;

.field private subscription:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .param p2, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2292
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->msgItem:Lcom/android/mms/ui/MessageItem;

    .line 2293
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->subscription:I

    .line 2294
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;I)V
    .locals 0
    .param p2, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p3, "subscription"    # I

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2297
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->msgItem:Lcom/android/mms/ui/MessageItem;

    .line 2298
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->subscription:I

    .line 2299
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2303
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->CopyToSimWithToastHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2304
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->msgItem:Lcom/android/mms/ui/MessageItem;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;->subscription:I

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->copyToSim(Lcom/android/mms/ui/MessageItem;I)Z
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2306
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2307
    return-void

    .line 2304
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
