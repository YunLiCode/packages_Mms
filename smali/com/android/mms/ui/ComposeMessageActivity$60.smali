.class Lcom/android/mms/ui/ComposeMessageActivity$60;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z
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
    .line 5632
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7700(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 5639
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5640
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5641
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 5642
    return-void
.end method
