.class final Lcom/android/mms/ui/ConversationList$6;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$6;->val$listener:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$6;->val$listener:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 706
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    # setter for: Lcom/android/mms/ui/ConversationList;->isCheckBox:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$802(Z)Z

    .line 707
    return-void
.end method
