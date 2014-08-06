.class Lcom/android/mms/ui/ComposeMessageActivity$42;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 4226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4229
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->batchMoveToSim(I)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8800(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 4230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4231
    return-void
.end method
