.class Lcom/android/mms/ui/ComposeMessageActivity$21;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    .line 1527
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 1531
    if-eqz p3, :cond_1

    .line 1532
    check-cast p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget-object v0, p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;->recipient:Lcom/android/mms/data/Contact;

    .line 1533
    .local v0, "c":Lcom/android/mms/data/Contact;
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    .line 1535
    .local v1, "l":Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1537
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1538
    const/16 v2, 0xc

    const v3, 0x7f0b007a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1545
    :cond_0
    :goto_0
    const/16 v2, 0x24

    const v3, 0x7f0b01f1

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1548
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v1    # "l":Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    :cond_1
    return-void

    .line 1540
    .restart local v0    # "c":Lcom/android/mms/data/Contact;
    .restart local v1    # "l":Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->canAddToContacts(Lcom/android/mms/data/Contact;)Z
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    const/16 v2, 0xd

    const v3, 0x7f0b007b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
