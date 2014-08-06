.class Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "MultiPickContactsActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

.field private mAlphabet:Ljava/lang/String;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mContactIdIndex:I

.field private mContactLookupIndex:I

.field private mDisplayNameIndex:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSortedIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/Context;Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Lcom/android/mms/ui/MultiPickContactsActivity;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "expandedGroupLayout"    # I
    .param p6, "groupFrom"    # [Ljava/lang/String;
    .param p7, "groupTo"    # [I
    .param p8, "childLayout"    # I
    .param p9, "childFrom"    # [Ljava/lang/String;
    .param p10, "childTo"    # [I

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 324
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraintIsValid:Z

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactLookupIndex:I

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mDisplayNameIndex:I

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mSortedIndex:I

    .line 326
    iput-object p3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    .line 327
    new-instance v0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 328
    const v0, 0x104049e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mAlphabet:Ljava/lang/String;

    .line 329
    invoke-direct {p0, p4}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getColumnIndex(Landroid/database/Cursor;)V

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;)Lcom/android/mms/ui/MultiPickContactsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    return-object v0
.end method

.method private getColumnIndex(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    const-string v0, "MultiPickContactsActivity"

    const-string v1, "getColumnsIndex, the cursor is null, couldn\'t get the index."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    return-void

    .line 488
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    .line 489
    const-string v0, "lookup"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactLookupIndex:I

    .line 491
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mDisplayNameIndex:I

    .line 493
    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mSortedIndex:I

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_1

    .line 496
    new-instance v0, Landroid/widget/AlphabetIndexer;

    iget v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mSortedIndex:I

    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    .line 382
    const v13, 0x7f0a0083

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 383
    .local v8, "iv":Landroid/widget/ImageView;
    const v13, 0x7f0a0084

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 385
    .local v11, "tv":Landroid/widget/TextView;
    const/4 v12, -0x1

    .line 386
    .local v12, "typeResId":I
    const/4 v7, 0x0

    .line 387
    .local v7, "detail":Ljava/lang/String;
    const-string v13, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 389
    .local v9, "mimetype":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 390
    const-string v13, "MultiPickContactsActivity"

    const-string v14, "bindChildView, the mimetype is null."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 394
    const v12, 0x1080036

    .line 395
    const-string v13, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    :cond_1
    :goto_1
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    const v13, 0x7f0a0085

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 405
    .local v1, "cb":Landroid/widget/CheckBox;
    const v13, 0x7f0a0086

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    .line 406
    .local v10, "rb":Landroid/widget/RadioButton;
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 407
    iget-object v13, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v13}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 410
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 396
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v10    # "rb":Landroid/widget/RadioButton;
    :cond_2
    const-string v13, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 398
    const v12, 0x7f02004c

    .line 399
    const-string v13, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 412
    .restart local v1    # "cb":Landroid/widget/CheckBox;
    .restart local v10    # "rb":Landroid/widget/RadioButton;
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 413
    .local v5, "count":I
    const-string v13, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 415
    .local v3, "contactId":J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 417
    .local v2, "childPosition":I
    new-instance v6, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    iget-object v13, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-direct {v6, v13, v3, v4, v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;JI)V

    .line 418
    .local v6, "data":Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
    iput v5, v6, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    .line 419
    iput-object v9, v6, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    .line 420
    iput-object v7, v6, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mValue:Ljava/lang/String;

    .line 421
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 423
    iget-object v13, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
    invoke-static {v13}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$400(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->isSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)Z

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 424
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 425
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    .line 339
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 341
    .local v5, "groupPosition":I
    const v10, 0x7f0a0084

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 342
    .local v9, "tv":Landroid/widget/TextView;
    iget v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mDisplayNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "displayName":Ljava/lang/String;
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/16 v10, 0x37

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/16 v13, 0x14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 345
    new-instance v10, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;

    invoke-direct {v10, p0, v5}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;I)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v10, 0x7f0a0083

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 358
    .local v6, "iv":Landroid/widget/ImageView;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    const v10, 0x7f0a0085

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 361
    .local v1, "cb":Landroid/widget/CheckBox;
    const v10, 0x7f0a0086

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 362
    .local v8, "rb":Landroid/widget/RadioButton;
    iget-object v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v10}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 363
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 365
    iget v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 366
    .local v2, "contactId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 367
    iget-object v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
    invoke-static {v10}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$400(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->isSelected(J)Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 368
    iget-object v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    .end local v2    # "contactId":J
    :goto_0
    return-void

    .line 370
    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 372
    iget v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactLookupIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "lookupKey":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 374
    iget-object v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
    invoke-static {v10}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$400(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->isSelected(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 375
    iget-object v10, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 439
    const/4 p1, 0x0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$600(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    # setter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$602(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 443
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getColumnIndex(Landroid/database/Cursor;)V

    .line 444
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 446
    :cond_1
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    .line 431
    iget v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "contactId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # invokes: Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsDetailCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$500(Lcom/android/mms/ui/MultiPickContactsActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 450
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "s":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    const/4 v3, 0x0

    # invokes: Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$700(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 457
    .local v0, "c":Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    .line 458
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method
