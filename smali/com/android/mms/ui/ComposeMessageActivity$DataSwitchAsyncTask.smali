.class Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSwitchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private isReceive:Z

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 1
    .param p2, "isReceive"    # Z

    .prologue
    .line 6806
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->isReceive:Z

    .line 6807
    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->isReceive:Z

    .line 6808
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 6812
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTargetDataSubscription:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->setPreferredDataSubscription(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 6802
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "isSwitched"    # Ljava/lang/Boolean;

    .prologue
    .line 6817
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsDataSwitching:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 6818
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6819
    const-string v1, "Mms/compose"

    const-string v2, "switch Data Subscription successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6820
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->isReceive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6821
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6826
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 6823
    :cond_0
    const-string v1, "Mms/compose"

    const-string v2, "switchDataSubscription failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDataSwitchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6802
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$DataSwitchAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
