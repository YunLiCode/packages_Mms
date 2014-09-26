.class Lcom/android/mms/ui/ComposeMessageActivity$58;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V
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
    .line 5456
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 5458
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5459
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    sub-int v0, p4, p2

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 5465
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x3

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->loadMessagesAndDraft(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 5473
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    sub-int v2, p2, p4

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->smoothScrollToEnd(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10000(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V

    .line 5474
    return-void
.end method
