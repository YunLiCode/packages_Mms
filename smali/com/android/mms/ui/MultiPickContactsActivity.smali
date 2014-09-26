.class public Lcom/android/mms/ui/MultiPickContactsActivity;
.super Landroid/app/ExpandableListActivity;
.source "MultiPickContactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;,
        Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;,
        Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContactCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ExpandableListView;

.field private mMode:I

.field private mOkBtn:Landroid/widget/Button;

.field private mSearchText:Landroid/widget/EditText;

.field private mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    .line 74
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 75
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 76
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;

    .line 529
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->init(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MultiPickContactsActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsDetailCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;
    .param p1, "x1"    # Landroid/content/AsyncQueryHandler;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    return-object v0
.end method

.method private getContactsCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "async"    # Landroid/content/AsyncQueryHandler;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 257
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v5, "lookup"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "display_name"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "sort_key"

    aput-object v5, v4, v0

    .line 264
    .local v4, "cols":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 265
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 270
    :cond_0
    const/4 v11, 0x0

    .line 271
    .local v11, "ret":Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 272
    const-string v7, "sort_key"

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-object v11

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "sort_key"

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method

.method private getContactsDetailCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v7, "selection":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype=\'vnd.android.cursor.item/email_v2\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method private init(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 235
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->init(Landroid/database/Cursor;)V

    .line 237
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 242
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 145
    iget v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 169
    :goto_0
    return v3

    .line 147
    :cond_0
    const v4, 0x7f0a0085

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 148
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .line 153
    .local v2, "data":Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
    iget v4, v2, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-eq v4, p4, :cond_1

    .line 154
    const-string v3, "MultiPickContactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The child click, the groupPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ,and the childPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not same as saved childPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super/range {p0 .. p6}, Landroid/app/ExpandableListActivity;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v3

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 162
    .local v1, "checked":Z
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->removeSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V

    .line 169
    :goto_1
    invoke-super/range {p0 .. p6}, Landroid/app/ExpandableListActivity;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v3

    goto :goto_0

    .line 166
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->addSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 176
    :sswitch_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v5, "intent":Landroid/content/Intent;
    const/4 v7, 0x1

    .line 178
    .local v7, "ok":Z
    iget v11, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 179
    iget-object v11, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v11}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getSelectedAsText()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "contactInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 181
    const/4 v7, 0x0

    .line 193
    .end local v4    # "contactInfo":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v7, :cond_5

    .line 194
    const/4 v11, -0x1

    invoke-virtual {p0, v11, v5}, Lcom/android/mms/ui/MultiPickContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 199
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->finish()V

    goto :goto_0

    .line 183
    .restart local v4    # "contactInfo":Ljava/lang/String;
    :cond_2
    const-string v11, "info"

    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 185
    .end local v4    # "contactInfo":Ljava/lang/String;
    :cond_3
    iget v11, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 186
    iget-object v11, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v11}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getSelectedAsVcard()Landroid/net/Uri;

    move-result-object v10

    .line 187
    .local v10, "vcard":Landroid/net/Uri;
    if-nez v10, :cond_4

    .line 188
    const/4 v7, 0x0

    goto :goto_1

    .line 190
    :cond_4
    const-string v11, "vcard"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 197
    .end local v10    # "vcard":Landroid/net/Uri;
    :cond_5
    const v11, 0x7f0b01e1

    invoke-static {p0, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 202
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "ok":Z
    :sswitch_1
    invoke-virtual {p0, v13}, Lcom/android/mms/ui/MultiPickContactsActivity;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->finish()V

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    .line 211
    check-cast v0, Landroid/widget/CheckBox;

    .line 212
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 213
    .local v2, "contactId":J
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 214
    .local v1, "cbCecked":Z
    if-eqz v1, :cond_6

    .line 215
    iget-object v11, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v11, v2, v3}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->addSelected(J)V

    goto :goto_0

    .line 217
    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v11, v2, v3}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->removeSelected(J)V

    goto :goto_0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "cbCecked":Z
    .end local v2    # "contactId":J
    :sswitch_3
    move-object v8, p1

    .line 221
    check-cast v8, Landroid/widget/RadioButton;

    .line 222
    .local v8, "rb":Landroid/widget/RadioButton;
    invoke-virtual {v8}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 223
    .local v6, "lookupKey":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v9

    .line 224
    .local v9, "rbChecked":Z
    if-eqz v9, :cond_0

    .line 225
    iget-object v11, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v11, v6}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->addSelected(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a000c -> :sswitch_0
        0x7f0a000d -> :sswitch_1
        0x7f0a0085 -> :sswitch_2
        0x7f0a0086 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f040021

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    if-eqz p1, :cond_1

    .line 89
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    .line 94
    :goto_0
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setContentView(I)V

    .line 95
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 103
    const-string v0, "MultiPickContactsActivity"

    const-string v1, "shouldn\'t be here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    .line 108
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mCancelBtn:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSearchText:Landroid/widget/EditText;

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSearchText:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-array v6, v8, [Ljava/lang/String;

    new-array v7, v8, [I

    new-array v9, v8, [Ljava/lang/String;

    new-array v10, v8, [I

    move-object v1, p0

    move-object v3, p0

    move v8, v5

    invoke-direct/range {v0 .. v10}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/Context;Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 128
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    goto/16 :goto_0

    .line 97
    :pswitch_0
    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setTitle(I)V

    goto/16 :goto_1

    .line 100
    :pswitch_1
    const v0, 0x7f0b0174

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setTitle(I)V

    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 135
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 247
    return-void
.end method
