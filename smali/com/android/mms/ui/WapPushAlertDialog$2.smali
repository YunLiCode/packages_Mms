.class Lcom/android/mms/ui/WapPushAlertDialog$2;
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
    .line 28
    iput-object p1, p0, Lcom/android/mms/ui/WapPushAlertDialog$2;->this$0:Lcom/android/mms/ui/WapPushAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/mms/ui/WapPushAlertDialog$2;->this$0:Lcom/android/mms/ui/WapPushAlertDialog;

    # getter for: Lcom/android/mms/ui/WapPushAlertDialog;->mLink:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/WapPushAlertDialog;->access$000(Lcom/android/mms/ui/WapPushAlertDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, "target":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/WapPushAlertDialog$2;->this$0:Lcom/android/mms/ui/WapPushAlertDialog;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/WapPushAlertDialog;->startActivity(Landroid/content/Intent;)V

    .line 32
    iget-object v1, p0, Lcom/android/mms/ui/WapPushAlertDialog$2;->this$0:Lcom/android/mms/ui/WapPushAlertDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/WapPushAlertDialog;->finish()V

    .line 33
    return-void
.end method
