.class Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;
.super Ljava/lang/Object;
.source "AttachmentEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnClick"
.end annotation


# instance fields
.field private mWhat:I

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentEditor;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AttachmentEditor;I)V
    .locals 0
    .param p2, "what"    # I

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p2, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->mWhat:I

    .line 199
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->this$0:Lcom/android/mms/ui/AttachmentEditor;

    # getter for: Lcom/android/mms/ui/AttachmentEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/AttachmentEditor;->access$000(Lcom/android/mms/ui/AttachmentEditor;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/AttachmentEditor$MessageOnClick;->mWhat:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method
