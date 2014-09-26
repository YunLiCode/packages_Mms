.class Lcom/android/mms/ui/SmsSelectorActivity$7;
.super Ljava/lang/Object;
.source "SmsSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSelectorActivity;->setDialogParameter(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;

.field final synthetic val$ids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$7;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$7;->val$ids:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/mms/ui/SmsSelectorActivity$7;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3eb

    iget-object v3, p0, Lcom/android/mms/ui/SmsSelectorActivity$7;->val$ids:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 358
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 360
    return-void
.end method
