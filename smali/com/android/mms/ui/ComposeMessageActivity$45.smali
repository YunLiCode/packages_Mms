.class Lcom/android/mms/ui/ComposeMessageActivity$45;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->processPickResult(Landroid/content/Intent;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$keySet:Ljava/util/Set;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$recipientCount:I

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/util/Set;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 4723
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$recipientCount:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$keySet:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$bundle:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$showProgress:Ljava/lang/Runnable;

    iput-object p8, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 4726
    iget v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$recipientCount:I

    new-array v7, v10, [Landroid/net/Uri;

    .line 4729
    .local v7, "newuris":[Landroid/net/Uri;
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$keySet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4730
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 4731
    .end local v2    # "i":I
    .local v3, "i":I
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4732
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4733
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 4736
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tel"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4737
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 4738
    .local v8, "phoneNum":[Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$uri:Landroid/net/Uri;

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v7, v3

    .end local v8    # "phoneNum":[Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 4742
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 4740
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$uri:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4749
    .end local v2    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$handler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4750
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v11

    if-nez v11, :cond_2

    .line 4751
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    throw v10

    .line 4743
    .restart local v3    # "i":I
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-static {v7}, Lcom/android/mms/data/ContactList;->blockingGetByUris([Landroid/net/Uri;)Lcom/android/mms/data/ContactList;

    move-result-object v6

    .line 4744
    .local v6, "list":Lcom/android/mms/data/ContactList;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 4745
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4746
    .local v1, "exsitList":Lcom/android/mms/data/ContactList;
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v1}, Lcom/android/mms/data/ContactList;->addAll(ILjava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4749
    .end local v1    # "exsitList":Lcom/android/mms/data/ContactList;
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$handler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4750
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_5

    .line 4751
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4757
    :cond_5
    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$45$1;

    invoke-direct {v9, p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity$45$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$45;Lcom/android/mms/data/ContactList;)V

    .line 4769
    .local v9, "populateWorker":Ljava/lang/Runnable;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->val$handler:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4770
    return-void
.end method
