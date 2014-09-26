.class Lcom/android/mms/ui/ComposeMessageActivity$53;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$numberToImport:I

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5060
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$mimeType:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 5063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$numberToImport:I

    if-ge v0, v4, :cond_2

    .line 5064
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .local v3, "uri":Landroid/os/Parcelable;
    move-object v4, v3

    .line 5066
    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 5067
    .local v2, "scheme":Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5070
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5071
    .local v1, "mimeType1":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5072
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    check-cast v3, Landroid/net/Uri;

    .end local v3    # "uri":Landroid/os/Parcelable;
    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    invoke-static {v4, v1, v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9500(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 5063
    .end local v1    # "mimeType1":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5076
    .restart local v3    # "uri":Landroid/os/Parcelable;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$mimeType:Ljava/lang/String;

    check-cast v3, Landroid/net/Uri;

    .end local v3    # "uri":Landroid/os/Parcelable;
    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    invoke-static {v4, v5, v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9500(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 5080
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_2
    return-void
.end method
