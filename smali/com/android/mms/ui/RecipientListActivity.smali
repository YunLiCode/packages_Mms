.class public Lcom/android/mms/ui/RecipientListActivity;
.super Landroid/app/ListActivity;
.source "RecipientListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;
    }
.end annotation


# instance fields
.field private mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    if-eqz p1, :cond_0

    .line 60
    const-string v4, "thread_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    .line 64
    :goto_0
    iget-wide v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 65
    const-string v4, "RecipientListActivity"

    const-string v5, "No thread_id specified in extras or icicle. Finishing..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    .line 85
    :goto_1
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "thread_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    goto :goto_0

    .line 70
    :cond_1
    iget-wide v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-static {p0, v4, v5, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 71
    .local v3, "conv":Lcom/android/mms/data/Conversation;
    if-nez v3, :cond_2

    .line 72
    const-string v4, "RecipientListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No conversation found for threadId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Finishing..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 77
    .local v2, "contacts":Lcom/android/mms/data/ContactList;
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;

    const v6, 0x7f040024

    invoke-direct {v5, p0, v6, v2}, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/data/ContactList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    .line 83
    .local v1, "cnt":I
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0004

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 104
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 97
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    goto :goto_0

    .line 100
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a00bb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const-string v0, "thread_id"

    iget-wide v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method
