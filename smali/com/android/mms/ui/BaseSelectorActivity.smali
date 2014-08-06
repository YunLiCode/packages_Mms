.class public abstract Lcom/android/mms/ui/BaseSelectorActivity;
.super Landroid/app/ListActivity;
.source "BaseSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BaseSelectorActivity$SelectorListAdapter;,
        Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;
    }
.end annotation


# instance fields
.field protected isConversationMessage:Z

.field protected isFromSettings:Z

.field protected mButtonNo:Landroid/widget/Button;

.field protected mButtonOk:Landroid/widget/Button;

.field private mCheckedItems:Landroid/os/Bundle;

.field protected mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mDialogMessage:Ljava/lang/String;

.field protected mFlag:I

.field protected mListAdapter:Landroid/widget/CursorAdapter;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mProjection:[Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;

.field protected mSelection:Ljava/lang/String;

.field protected mSubscription:I

.field protected mTitle:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    .line 388
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BaseSelectorActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/BaseSelectorActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mCheckedItems:Landroid/os/Bundle;

    return-object v0
.end method

.method private assembleValues(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 314
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 317
    .local v0, "cr":Landroid/database/Cursor;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 318
    .local v1, "id":J
    const-string v4, "checked"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 319
    iget-object v4, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 281
    .local v0, "CheckedCount":I
    iget-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mButtonOk:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b007d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BaseSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method


# virtual methods
.method protected checkedAllMessage()V
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 241
    invoke-direct {p0, v0}, Lcom/android/mms/ui/BaseSelectorActivity;->assembleValues(I)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->updateState()V

    .line 244
    return-void
.end method

.method protected clearAllMessage()V
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 251
    invoke-direct {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->updateState()V

    .line 252
    return-void
.end method

.method protected confirmOperateDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 273
    const v1, 0x7f0b007d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 277
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 202
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BaseSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mButtonOk:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mButtonOk:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b007d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BaseSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BaseSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mButtonNo:Landroid/widget/Button;

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mButtonNo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 211
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->finish()V

    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x12c

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 130
    .local v3, "itemIds":Landroid/util/SparseBooleanArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, "pos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v4, "mSelectedThreadIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 134
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget v8, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    if-ne v8, v10, :cond_1

    .line 137
    iget-object v8, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 138
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {p0, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 139
    .local v0, "conv":Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    .line 140
    .local v6, "threadId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "conv":Lcom/android/mms/data/Conversation;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v6    # "threadId":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_2
    iget v8, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    if-ne v8, v10, :cond_3

    .line 145
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 146
    iget-object v8, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mQueryHandler:Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;

    invoke-static {v4, v8}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BaseSelectorActivity;->setDialogParameter(Ljava/util/ArrayList;)V

    .line 150
    iget-object v8, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v9, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/BaseSelectorActivity;->confirmOperateDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    .end local v3    # "itemIds":Landroid/util/SparseBooleanArray;
    .end local v4    # "mSelectedThreadIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v5    # "pos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/BaseSelectorActivity;->setResult(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->finish()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a000c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BaseSelectorActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mTitle:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mSubscription:I

    .line 110
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mUri:Landroid/net/Uri;

    .line 111
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sms_flag"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    .line 112
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFromSettings"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->isFromSettings:Z

    .line 113
    iget-boolean v1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->isFromSettings:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->isConversationMessage:Z

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_2

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->init()V

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mCheckedItems:Landroid/os/Bundle;

    .line 119
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 121
    new-instance v0, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;-><init>(Lcom/android/mms/ui/BaseSelectorActivity;Landroid/content/ContentResolver;Lcom/android/mms/ui/BaseSelectorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mQueryHandler:Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;

    .line 122
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->startQuery()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 326
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 327
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 190
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, 0x1

    .line 286
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 287
    const-string v4, "Trace"

    const-string v5, "onListItemClick"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 289
    .local v1, "isChecked":Z
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 291
    .local v2, "isPopStyle":Z
    if-eqz v2, :cond_1

    .line 292
    const v4, 0x7f0a0001

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 293
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-ne v1, v6, :cond_0

    .line 294
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    invoke-direct {p0, p3}, Lcom/android/mms/ui/BaseSelectorActivity;->assembleValues(I)V

    .line 310
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->updateState()V

    .line 311
    return-void

    .line 297
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    iget-object v4, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    const v4, 0x7f0a0002

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 302
    .local v3, "msgBlockView":Landroid/view/View;
    if-ne v1, v6, :cond_2

    .line 303
    const v4, 0x7f02008b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 304
    invoke-direct {p0, p3}, Lcom/android/mms/ui/BaseSelectorActivity;->assembleValues(I)V

    goto :goto_0

    .line 306
    :cond_2
    const v4, 0x7f020031

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 307
    iget-object v4, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BaseSelectorActivity;->setIntent(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->init()V

    .line 182
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 340
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->checkedAllMessage()V

    goto :goto_0

    .line 344
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->clearAllMessage()V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method protected refresh(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BaseSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 217
    return-void
.end method

.method public setDialogListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "dialogListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 221
    return-void
.end method

.method public setDialogMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mDialogMessage:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public abstract setDialogParameter(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProjection:[Ljava/lang/String;

    .line 233
    return-void
.end method

.method public abstract setQueryParameter()V
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mSelection:Ljava/lang/String;

    .line 229
    return-void
.end method

.method protected startQuery()V
    .locals 9

    .prologue
    .line 256
    :try_start_0
    iget v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mFlag:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mQueryHandler:Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V

    .line 262
    :goto_0
    const v0, 0x7f0b01cf

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BaseSelectorActivity;->refresh(I)V

    .line 266
    :goto_1
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseSelectorActivity;->setQueryParameter()V

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mQueryHandler:Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/BaseSelectorActivity;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BaseSelectorActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v8

    .line 264
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method
