.class Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyToSimSelectListener"
.end annotation


# instance fields
.field private msgItem:Lcom/android/mms/ui/MessageItem;

.field private subscription:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p2, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 2274
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 2275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2276
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;->msgItem:Lcom/android/mms/ui/MessageItem;

    .line 2277
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2280
    if-ltz p2, :cond_1

    .line 2281
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;->subscription:I

    .line 2285
    :cond_0
    :goto_0
    return-void

    .line 2282
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;->msgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;->subscription:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
