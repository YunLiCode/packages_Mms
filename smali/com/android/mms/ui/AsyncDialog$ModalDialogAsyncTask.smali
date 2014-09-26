.class Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;
.super Landroid/os/AsyncTask;
.source "AsyncDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AsyncDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModalDialogAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mPostExecuteTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/mms/ui/AsyncDialog;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AsyncDialog;ILjava/lang/Runnable;)V
    .locals 2
    .param p2, "dialogStringId"    # I
    .param p3, "postExecuteTask"    # Ljava/lang/Runnable;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    iput-object p3, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->mPostExecuteTask:Ljava/lang/Runnable;

    .line 105
    # getter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/android/mms/ui/AsyncDialog;->access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->createProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    # setter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {p1, v0}, Lcom/android/mms/ui/AsyncDialog;->access$002(Lcom/android/mms/ui/AsyncDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 108
    :cond_0
    # getter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/android/mms/ui/AsyncDialog;->access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/android/mms/ui/AsyncDialog;->access$100(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method private createProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/AsyncDialog;->access$100(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 117
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 120
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Runnable;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->doInBackground([Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Runnable;

    .prologue
    .line 137
    if-eqz p1, :cond_1

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 140
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/AsyncDialog;->access$300(Lcom/android/mms/ui/AsyncDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/AsyncDialog;->access$200(Lcom/android/mms/ui/AsyncDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 151
    .restart local v0    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/AsyncDialog;->access$300(Lcom/android/mms/ui/AsyncDialog;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/AsyncDialog;->access$200(Lcom/android/mms/ui/AsyncDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/AsyncDialog;->access$100(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/AsyncDialog;->access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/AsyncDialog;->access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/AsyncDialog;->access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->mPostExecuteTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->mPostExecuteTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/AsyncDialog;->access$300(Lcom/android/mms/ui/AsyncDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/android/mms/ui/AsyncDialog;

    # getter for: Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/AsyncDialog;->access$200(Lcom/android/mms/ui/AsyncDialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method
