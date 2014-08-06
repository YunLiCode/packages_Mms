.class Lcom/android/mms/ui/MessagingPreferenceActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 921
    if-eqz p2, :cond_0

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 923
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 924
    .local v0, "enabled":Z
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 925
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 926
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 927
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAirPlaneModeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 929
    .end local v0    # "enabled":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 926
    .restart local v0    # "enabled":Z
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x3

    goto :goto_0
.end method
