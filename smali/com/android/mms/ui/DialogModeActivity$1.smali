.class Lcom/android/mms/ui/DialogModeActivity$1;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$1;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 284
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 273
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$1;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    # invokes: Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/DialogModeActivity;->access$000(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$1;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    # invokes: Lcom/android/mms/ui/DialogModeActivity;->updateCounter(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/DialogModeActivity;->access$100(Lcom/android/mms/ui/DialogModeActivity;Ljava/lang/CharSequence;III)V

    .line 281
    return-void
.end method
