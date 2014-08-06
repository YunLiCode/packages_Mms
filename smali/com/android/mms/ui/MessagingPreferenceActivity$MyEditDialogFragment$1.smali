.class Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;ILandroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    iput p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$sub:I

    iput-object p3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$sub:I

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->newInstance(Lcom/android/mms/ui/MessagingPreferenceActivity;ILjava/lang/String;)Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    move-result-object v0

    .line 821
    .local v0, "newFragment":Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->dismiss()V

    .line 823
    return-void
.end method
