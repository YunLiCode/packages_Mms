.class Lcom/android/mms/ui/ClassZeroActivity$2;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    .line 172
    return-void
.end method
