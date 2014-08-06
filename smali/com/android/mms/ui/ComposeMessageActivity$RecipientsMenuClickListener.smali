.class final Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientsMenuClickListener"
.end annotation


# instance fields
.field private final mRecipient:Lcom/android/mms/data/Contact;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .param p2, "recipient"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1555
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    .line 1556
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1560
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    if-nez v5, :cond_0

    .line 1587
    :goto_0
    return v3

    .line 1564
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1567
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1568
    .local v1, "contactUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1569
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1570
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 1571
    goto :goto_0

    .line 1574
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v3, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5002(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1576
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x6c

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v4

    .line 1578
    goto :goto_0

    .line 1582
    :sswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1584
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const-string v4, ""

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 1564
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x24 -> :sswitch_2
    .end sparse-switch
.end method
