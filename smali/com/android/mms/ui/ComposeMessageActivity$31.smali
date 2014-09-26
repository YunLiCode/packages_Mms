.class Lcom/android/mms/ui/ComposeMessageActivity$31;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onStart()V
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
    .line 3367
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3369
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x2

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->loadMessagesAndDraft(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 3370
    return-void
.end method
