.class public Lcom/android/mms/ui/AsyncDialog;
.super Ljava/lang/Object;
.source "AsyncDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowProgressDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/mms/ui/AsyncDialog$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog$1;-><init>(Lcom/android/mms/ui/AsyncDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/android/mms/ui/AsyncDialog;->mActivity:Landroid/app/Activity;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/AsyncDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/AsyncDialog;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/AsyncDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AsyncDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public clearPendingProgressDialog()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 83
    :cond_0
    return-void
.end method

.method public runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "backgroundTask"    # Ljava/lang/Runnable;
    .param p2, "postExecuteTask"    # Ljava/lang/Runnable;
    .param p3, "dialogStringId"    # I

    .prologue
    .line 53
    new-instance v0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;-><init>(Lcom/android/mms/ui/AsyncDialog;ILjava/lang/Runnable;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method
