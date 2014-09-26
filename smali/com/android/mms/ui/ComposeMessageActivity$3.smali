.class Lcom/android/mms/ui/ComposeMessageActivity$3;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


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
    .line 529
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getAttachmentPostfix(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$3;->isValidUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 545
    .local v0, "lastDot":I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "postfix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f0b004c

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .end local v0    # "lastDot":I
    .end local v1    # "postfix":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 532
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 534
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$3;->getAttachmentPostfix(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected isValidUri(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 560
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 561
    .local v2, "path":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "fileType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ""

    if-eq v1, v4, :cond_0

    const/4 v3, 0x1

    .line 569
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileType":Ljava/lang/String;
    :cond_0
    return v3

    .line 560
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
