.class Lcom/android/mms/ui/ComposeMessageActivity$43;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    .prologue
    .line 4418
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$43;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$43;->val$replace:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$43;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$43;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$43;->val$replace:Z

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9000(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 4422
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4423
    return-void
.end method
