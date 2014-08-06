.class Lcom/android/mms/ui/ComposeMessageActivity$22;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 1808
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1811
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isCursorValid()Z
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1938
    :goto_0
    return-void

    .line 1814
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 1815
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1816
    .local v9, "type":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1818
    .local v6, "msgId":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    invoke-static {v10, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5200(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v10, v9, v6, v7, v3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    .line 1821
    .local v8, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-nez v8, :cond_1

    .line 1822
    const-string v10, "Mms/compose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot load message item for type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", msgId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1827
    :cond_1
    const v10, 0x7f0b0026

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1829
    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v5, v10, v8}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1833
    .local v5, "l":Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1835
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    iget v10, v8, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    iget v10, v8, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_3

    .line 1838
    :cond_2
    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    const v13, 0x7f0b00c9

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1842
    :cond_3
    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    const v13, 0x7f0b0025

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1846
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v10, v0, v5, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 1849
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isForwardable(J)Z
    invoke-static {v10, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1850
    :cond_5
    const/4 v10, 0x0

    const/16 v11, 0x15

    const/4 v12, 0x0

    const v13, 0x7f0b001e

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1855
    :cond_6
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1856
    const/4 v10, 0x0

    const/16 v11, 0x22

    const/4 v12, 0x0

    const v13, 0x7f0b001f

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1860
    :cond_7
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1876
    iget v10, v8, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v10, :pswitch_data_0

    .line 1891
    :pswitch_0
    const/16 v10, 0x18

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1894
    .local v4, "downloadType":I
    if-nez v4, :cond_8

    .line 1895
    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    const v13, 0x7f0b0012

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1898
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v11, v8, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1899
    const/4 v10, 0x0

    const/16 v11, 0x19

    const/4 v12, 0x0

    const v13, 0x7f0b010b

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1902
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v11, v8, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isDrmRingtoneWithRights(J)Z
    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5700(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1903
    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v14, v8, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getDrmMimeMenuStringRsrc(J)I
    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;J)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1911
    .end local v4    # "downloadType":I
    :cond_a
    :goto_1
    :pswitch_1
    iget-boolean v10, v8, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v10, :cond_e

    .line 1912
    const/4 v10, 0x0

    const/16 v11, 0x1d

    const/4 v12, 0x0

    const v13, 0x7f0b00cc

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1919
    :goto_2
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v8, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isValidSimAddress(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1921
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->hasIccCardCount()I
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v10

    if-lez v10, :cond_b

    .line 1923
    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v14, 0x7f0b01cc

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v17, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getSimName()Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1928
    :cond_b
    const/4 v10, 0x0

    const/16 v11, 0x11

    const/4 v12, 0x0

    const v13, 0x7f0b0013

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1931
    iget-object v10, v8, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v11, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v10, v11, :cond_c

    iget-boolean v10, v8, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v10, :cond_d

    .line 1932
    :cond_c
    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    const v13, 0x7f0b0014

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1936
    :cond_d
    const/4 v10, 0x0

    const/16 v11, 0x12

    const/4 v12, 0x0

    const v13, 0x7f0b0015

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1884
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v11, v8, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1885
    const/4 v10, 0x0

    const/16 v11, 0x19

    const/4 v12, 0x0

    const v13, 0x7f0b010b

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1915
    :cond_e
    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const v13, 0x7f0b00cb

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1876
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
