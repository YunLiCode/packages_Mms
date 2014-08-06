.class Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

.field final synthetic val$displayedSMSC:Ljava/lang/String;

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    iput p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    iput-object p3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 871
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 872
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.smsc"

    const-string v3, "com.android.smsc.SmscService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 874
    const-string v1, "com.android.smsc.cmd.set"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string v1, "sub"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    const-string v1, "smsc"

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->access$1100(Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 878
    return-void
.end method
