.class Lcom/android/mms/ui/WapPushAlertDialog$1;
.super Ljava/lang/Object;
.source "WapPushAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WapPushAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WapPushAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WapPushAlertDialog;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/mms/ui/WapPushAlertDialog$1;->this$0:Lcom/android/mms/ui/WapPushAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/ui/WapPushAlertDialog$1;->this$0:Lcom/android/mms/ui/WapPushAlertDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/WapPushAlertDialog;->finish()V

    .line 38
    return-void
.end method
