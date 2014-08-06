.class public Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyEditDialogFragment"
.end annotation


# instance fields
.field private mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    return-object v0
.end method

.method public static newInstance(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;
    .locals 3
    .param p0, "activity"    # Lcom/android/mms/ui/MessagingPreferenceActivity;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "smsc"    # Ljava/lang/CharSequence;
    .param p3, "sub"    # I

    .prologue
    .line 791
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    invoke-direct {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;-><init>()V

    .line 792
    .local v1, "dialog":Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;
    iput-object p0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 794
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 796
    const-string v2, "smsc"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 797
    const-string v2, "sub"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 799
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xf

    .line 804
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "sub"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 805
    .local v2, "sub":I
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    if-nez v3, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 807
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->dismiss()V

    .line 809
    :cond_0
    new-instance v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 810
    .local v1, "edit":Landroid/widget/EditText;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 811
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 812
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "smsc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 814
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;ILandroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 828
    .local v0, "alert":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 830
    return-object v0
.end method
