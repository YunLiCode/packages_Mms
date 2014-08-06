.class Lcom/android/mms/ui/ComposeMessageActivity$67;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onAddCc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$booleans:[Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Z)V
    .locals 0

    .prologue
    .line 6772
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->val$booleans:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "b"    # Z

    .prologue
    .line 6776
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->val$booleans:[Z

    aput-boolean p3, v0, p2

    .line 6777
    return-void
.end method
