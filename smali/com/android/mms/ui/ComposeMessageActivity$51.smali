.class Lcom/android/mms/ui/ComposeMessageActivity$51;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->asyncAddVcard(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/app/ProgressDialog;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 4950
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$showProgress:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4955
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 4956
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0b0171

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
    invoke-static {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 4957
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/mms/data/WorkingMessage;->setAddingAttachment(Z)V

    .line 4959
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4960
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4965
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$51;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4966
    return-void

    .line 4962
    :catch_0
    move-exception v1

    goto :goto_0
.end method
