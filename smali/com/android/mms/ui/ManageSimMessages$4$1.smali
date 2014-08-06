.class Lcom/android/mms/ui/ManageSimMessages$4$1;
.super Ljava/lang/Thread;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$4;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$4;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$4;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # invokes: Lcom/android/mms/ui/ManageSimMessages;->deleteAllFromSim()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 537
    return-void
.end method
