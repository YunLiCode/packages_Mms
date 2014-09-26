.class Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
.super Ljava/lang/Object;
.source "MultiPickContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySelected"
.end annotation


# instance fields
.field mSelectedContactLookupKey:Ljava/lang/String;

.field mSelectedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity;)V
    .locals 2

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    .line 542
    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    .line 545
    :cond_0
    return-void
.end method

.method private getKeyString(JI)Ljava/lang/String;
    .locals 4
    .param p1, "contactId"    # J
    .param p3, "childPosition"    # I

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 874
    .local v0, "selected":Ljava/lang/StringBuilder;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addSelected(J)V
    .locals 4
    .param p1, "contactId"    # J

    .prologue
    const/4 v3, 0x1

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$800(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 621
    :cond_0
    return-void
.end method

.method public addSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V
    .locals 7
    .param p1, "data"    # Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .prologue
    const/4 v5, 0x1

    .line 646
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v3}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 647
    iget v3, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-gez v3, :cond_1

    .line 648
    const-string v3, "MultiPickContactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the selected child position is wrong:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-wide v3, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "partKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 654
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    const/4 v1, 0x0

    .line 655
    .local v1, "newList":Z
    if-nez v0, :cond_2

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    const/4 v1, 0x1

    .line 659
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-ne v3, v4, :cond_4

    .line 664
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    const/4 v6, -0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$800(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 666
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-ge v3, v4, :cond_5

    .line 667
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    if-eqz v1, :cond_3

    .line 670
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 673
    :cond_5
    const-string v3, "MultiPickContactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSelected, contactId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), childPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), count("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), shouldn\'t be here caused by the selected list size("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") would be larger than the count."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addSelected(Ljava/lang/String;)V
    .locals 2
    .param p1, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$800(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 638
    :cond_0
    return-void
.end method

.method public getSelectedAsText()Ljava/lang/String;
    .locals 24

    .prologue
    .line 765
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .local v22, "result":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    .line 768
    .local v23, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;>;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 769
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 770
    .local v16, "key":Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 771
    .local v15, "items":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v8, v15, v1

    .line 772
    .local v8, "contactId":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v18, v15, v1

    .line 774
    .local v18, "marked":Ljava/lang/String;
    const-string v1, "["

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v2, 0x7f0b0175

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 783
    .local v7, "contactCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 787
    :cond_0
    if-eqz v7, :cond_1

    .line 788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 789
    const/4 v7, 0x0

    .line 793
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # invokes: Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsDetailCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v8}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$500(Lcom/android/mms/ui/MultiPickContactsActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 795
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 796
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    if-eqz v9, :cond_d

    .line 797
    const-string v1, "mimetype"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 799
    .local v19, "mimeIndex":I
    const-string v1, "data1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 800
    .local v21, "phoneIndex":I
    const-string v1, "data1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 802
    .local v11, "emailIndex":I
    if-nez v17, :cond_6

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 804
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 805
    const-string v1, ", "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 807
    .local v20, "mimeType":Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 808
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v2, 0x7f0b0176

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 848
    .end local v11    # "emailIndex":I
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    .end local v19    # "mimeIndex":I
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "phoneIndex":I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 849
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 850
    const/4 v9, 0x0

    .line 848
    :cond_3
    throw v1

    .line 787
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v7, :cond_4

    .line 788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 789
    const/4 v7, 0x0

    .line 787
    :cond_4
    throw v1

    .line 810
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "emailIndex":I
    .restart local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    .restart local v19    # "mimeIndex":I
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v21    # "phoneIndex":I
    :cond_5
    :try_start_2
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v2, 0x7f0b0177

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 815
    .end local v20    # "mimeType":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 817
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .line 818
    .local v10, "data":Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
    const-string v1, ", "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    iget-object v1, v10, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 822
    :cond_8
    iget v1, v10, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 823
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 824
    .restart local v20    # "mimeType":Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 825
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v2, 0x7f0b0176

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 828
    :cond_9
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 829
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v2, 0x7f0b0177

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 835
    .end local v20    # "mimeType":Ljava/lang/String;
    :cond_a
    iget-object v1, v10, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 836
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v2, 0x7f0b0176

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_b
    :goto_3
    iget-object v1, v10, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mValue:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 838
    :cond_c
    iget-object v1, v10, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v2, 0x7f0b0177

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 848
    .end local v10    # "data":Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
    .end local v11    # "emailIndex":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v19    # "mimeIndex":I
    .end local v21    # "phoneIndex":I
    :cond_d
    if-eqz v9, :cond_e

    .line 849
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 850
    const/4 v9, 0x0

    .line 854
    :cond_e
    const-string v1, "]"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 856
    .end local v7    # "contactCursor":Landroid/database/Cursor;
    .end local v8    # "contactId":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;>;"
    .end local v15    # "items":[Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    .end local v18    # "marked":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedAsVcard()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 869
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected(J)Z
    .locals 2
    .param p1, "contactId"    # J

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)Z
    .locals 8
    .param p1, "data"    # Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 587
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v4}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 588
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    const/4 v7, -0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    :goto_0
    return v2

    .line 591
    :cond_0
    iget-wide v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {p0, v4, v5, v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "partKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 593
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 597
    goto :goto_0

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    .end local v1    # "partKey":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 603
    goto :goto_0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSelected(J)V
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x1

    .line 695
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$800(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 703
    :cond_0
    return-void
.end method

.method public removeSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V
    .locals 8
    .param p1, "data"    # Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .prologue
    const/4 v7, 0x1

    .line 711
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I
    invoke-static {v4}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$300(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 712
    iget-wide v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {p0, v4, v5, v7}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "partkey":Ljava/lang/String;
    iget-wide v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    const/4 v6, -0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "allkey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 715
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    if-eqz v2, :cond_3

    .line 718
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    .line 725
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    # getter for: Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/MultiPickContactsActivity;->access$800(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 757
    .end local v0    # "allkey":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    .end local v3    # "partkey":Ljava/lang/String;
    :cond_1
    return-void

    .line 727
    .restart local v0    # "allkey":Ljava/lang/String;
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    .restart local v3    # "partkey":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 735
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-le v4, v7, :cond_0

    .line 743
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-ge v1, v4, :cond_5

    .line 745
    iget v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-ne v1, v4, :cond_4

    .line 744
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 747
    :cond_4
    new-instance v4, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    iget-object v5, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    iget-wide v6, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;JI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 749
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
