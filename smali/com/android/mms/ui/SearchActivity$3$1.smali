.class Lcom/android/mms/ui/SearchActivity$3$1;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$3;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$3;

.field final synthetic val$addressPos:I

.field final synthetic val$bodyPos:I

.field final synthetic val$rowidPos:I

.field final synthetic val$threadIdPos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$3;Landroid/content/Context;Landroid/database/Cursor;ZIIII)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iput p5, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$addressPos:I

    iput p6, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$bodyPos:I

    iput p7, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$threadIdPos:I

    iput p8, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$rowidPos:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 318
    const v2, 0x7f0a0033

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    .line 319
    .local v19, "title":Landroid/widget/TextView;
    const v2, 0x7f0a008e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    .line 321
    .local v18, "snippet":Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SearchActivity$3$1;->val$addressPos:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 322
    .local v9, "address":Ljava/lang/String;
    if-eqz v9, :cond_1

    const/4 v2, 0x0

    invoke-static {v9, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    .line 324
    .local v12, "contact":Lcom/android/mms/data/Contact;
    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v21

    .line 325
    .local v21, "titleString":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SearchActivity$3$1;->val$bodyPos:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SearchActivity$3$1;->val$threadIdPos:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 334
    .local v4, "threadId":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SearchActivity$3$1;->val$rowidPos:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 339
    .local v6, "rowid":J
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v13

    .line 342
    .local v13, "conversation":Lcom/android/mms/data/Conversation;
    if-eqz v13, :cond_5

    .line 343
    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v16

    .line 344
    .local v16, "list":Lcom/android/mms/data/ContactList;
    const-string v17, ", "

    .line 345
    .local v17, "sep":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 346
    .local v20, "titleBuffer":Ljava/lang/StringBuffer;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    .line 347
    .local v10, "c":Lcom/android/mms/data/Contact;
    invoke-static {v10}, Lcom/android/mms/ui/RecipientsEditor;->contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 348
    .local v11, "charSequence":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 322
    .end local v4    # "threadId":J
    .end local v6    # "rowid":J
    .end local v10    # "c":Lcom/android/mms/data/Contact;
    .end local v11    # "charSequence":Ljava/lang/CharSequence;
    .end local v12    # "contact":Lcom/android/mms/data/Contact;
    .end local v13    # "conversation":Lcom/android/mms/data/Conversation;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "list":Lcom/android/mms/data/ContactList;
    .end local v17    # "sep":Ljava/lang/String;
    .end local v20    # "titleBuffer":Ljava/lang/StringBuffer;
    .end local v21    # "titleString":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 324
    .restart local v12    # "contact":Lcom/android/mms/data/Contact;
    :cond_2
    const-string v21, ""

    goto :goto_1

    .line 353
    .restart local v4    # "threadId":J
    .restart local v6    # "rowid":J
    .restart local v13    # "conversation":Lcom/android/mms/data/Conversation;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "list":Lcom/android/mms/data/ContactList;
    .restart local v17    # "sep":Ljava/lang/String;
    .restart local v20    # "titleBuffer":Ljava/lang/StringBuffer;
    .restart local v21    # "titleString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 354
    .local v15, "lastSepIndex":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_4

    .line 355
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 357
    :cond_4
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .end local v13    # "conversation":Lcom/android/mms/data/Conversation;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "lastSepIndex":I
    .end local v16    # "list":Lcom/android/mms/data/ContactList;
    .end local v17    # "sep":Ljava/lang/String;
    .end local v20    # "titleBuffer":Ljava/lang/StringBuffer;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/SearchActivity$3$1;->val$bodyPos:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v2, Lcom/android/mms/ui/SearchActivity$3$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/SearchActivity$3$1$1;-><init>(Lcom/android/mms/ui/SearchActivity$3$1;JJ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-void

    .line 361
    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "TitleString":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 361
    .end local v8    # "TitleString":Ljava/lang/String;
    :cond_7
    const-string v8, ""

    goto :goto_4
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 382
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 383
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040027

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, "v":Landroid/view/View;
    return-object v1
.end method
