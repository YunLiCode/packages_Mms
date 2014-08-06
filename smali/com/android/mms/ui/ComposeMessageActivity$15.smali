.class Lcom/android/mms/ui/ComposeMessageActivity$15;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 922
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 927
    const-string v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "apnType":Ljava/lang/String;
    const-string v4, "networkUnvailable"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 929
    .local v2, "noNetwork":Z
    const-string v4, "SUBSCRIPTION"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 933
    .local v3, "subscription":I
    const-string v4, "mms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListItem;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 935
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitchConnected()V
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 938
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "noNetwork":Z
    .end local v3    # "subscription":I
    :cond_1
    return-void
.end method
