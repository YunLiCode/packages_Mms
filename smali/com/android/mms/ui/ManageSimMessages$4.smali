.class Lcom/android/mms/ui/ManageSimMessages$4;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x2

    # invokes: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 533
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$4$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$4$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$4;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSimMessages$4$1;->start()V

    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 540
    return-void
.end method
