.class Lcom/android/mms/ui/ComposeMessageActivity$52;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 5030
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$52;->val$mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$52;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5033
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$52;->val$mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$52;->val$uri:Landroid/net/Uri;

    const/4 v3, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9500(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 5034
    return-void
.end method
