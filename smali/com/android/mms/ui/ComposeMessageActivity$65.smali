.class Lcom/android/mms/ui/ComposeMessageActivity$65;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showDataSwitchDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$receive:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    .prologue
    .line 6571
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->val$receive:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 6573
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 6574
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6575
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->val$receive:Z

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->handleDataSwitch(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11500(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 6581
    :cond_0
    :goto_0
    return-void

    .line 6576
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 6577
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6578
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$65;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSwitchToSend:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2102(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0
.end method
