.class final Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 6129
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6130
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 6131
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/16 v7, 0x2538

    const/4 v6, 0x0

    .line 6314
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 6315
    sparse-switch p1, :sswitch_data_0

    .line 6335
    .end local p2    # "cookie":Ljava/lang/Object;
    :goto_0
    const/16 v3, 0x709

    if-ne p1, v3, :cond_4

    .line 6336
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->isLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getExitDialogueSign()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6337
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isLocked:Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 6338
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(I)V
    invoke-static {v3, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11300(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 6364
    :goto_1
    return-void

    .line 6317
    .restart local p2    # "cookie":Ljava/lang/Object;
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 6320
    :sswitch_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6322
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10602(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 6326
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v4, -0x2

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 6330
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 6341
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->setExitDialogueSign()V

    .line 6342
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 6343
    .local v2, "recipients":Lcom/android/mms/data/ContactList;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6349
    if-eqz v2, :cond_2

    .line 6350
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 6351
    .local v0, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->removeFromCache()V

    goto :goto_2

    .line 6356
    .end local v0    # "contact":Lcom/android/mms/data/Contact;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 6357
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 6363
    .end local v2    # "recipients":Lcom/android/mms/data/ContactList;
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_1

    .line 6358
    :cond_4
    const/16 v3, 0x25e4

    if-ne p1, v3, :cond_3

    .line 6360
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(I)V
    invoke-static {v3, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11300(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    goto :goto_3

    .line 6315
    nop

    :sswitch_data_0
    .sparse-switch
        0x709 -> :sswitch_0
        0x25e4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 24
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 6135
    sparse-switch p1, :sswitch_data_0

    .line 6310
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 6137
    .restart local p2    # "cookie":Ljava/lang/Object;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 6138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 6141
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 6143
    .local v16, "tid":J
    const-string v18, "Mms:app"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 6144
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "##### onQueryComplete: msg history result for threadId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6146
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    cmp-long v18, v16, v18

    if-eqz v18, :cond_3

    .line 6147
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onQueryComplete: msg history query result is for threadId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", but mConversation has threadId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " starting a new query"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6150
    if-eqz p3, :cond_2

    .line 6151
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 6153
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 6158
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6169
    const/4 v12, -0x1

    .line 6170
    .local v12, "newSelectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "select_id"

    const-wide/16 v20, -0x1

    invoke-virtual/range {v18 .. v21}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 6171
    .local v13, "targetMsgId":J
    const-wide/16 v18, -0x1

    cmp-long v18, v13, v18

    if-eqz v18, :cond_8

    .line 6172
    const/16 v18, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6173
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 6174
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 6175
    .local v10, "msgId":J
    cmp-long v18, v10, v13

    if-nez v18, :cond_4

    .line 6176
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 6202
    .end local v10    # "msgId":J
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6204
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_a

    .line 6205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6225
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 6227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mNeedCheckConversationList:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 6229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mNeedCheckConversationList:Z
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10702(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 6230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v9

    .line 6232
    .local v9, "messageCount":I
    if-nez v9, :cond_6

    .line 6234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v18

    new-instance v19, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 6239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 6249
    .end local v9    # "messageCount":I
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 6250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6255
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 6256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity$MmsLengthFilter;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 6258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 6180
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10300(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 6186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10300(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 6187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v4

    .line 6188
    .local v4, "cnt":I
    if-lez v4, :cond_5

    .line 6191
    add-int/lit8 v12, v4, -0x1

    .line 6192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10302(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    goto/16 :goto_1

    .line 6197
    .end local v4    # "cnt":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10300(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v12

    .line 6198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10302(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    goto/16 :goto_1

    .line 6207
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v6

    .line 6208
    .local v6, "count":I
    const-wide/16 v7, 0x0

    .line 6209
    .local v7, "lastMsgId":J
    if-lez v6, :cond_b

    .line 6210
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToLast()Z

    .line 6211
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 6217
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10600(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v20

    cmp-long v18, v7, v20

    if-eqz v18, :cond_d

    :cond_c
    const/16 v18, 0x1

    :goto_3
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->smoothScrollToEnd(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10000(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V

    .line 6218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J
    invoke-static {v0, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10602(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 6219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto/16 :goto_2

    .line 6217
    :cond_d
    const/16 v18, 0x0

    goto :goto_3

    .line 6262
    .end local v6    # "count":I
    .end local v7    # "lastMsgId":J
    .end local v12    # "newSelectionPos":I
    .end local v13    # "targetMsgId":J
    .end local v16    # "tid":J
    .restart local p2    # "cookie":Ljava/lang/Object;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v19, v0

    if-eqz p3, :cond_e

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_e

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isLocked:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    move-object/from16 v15, p2

    .line 6264
    check-cast v15, Ljava/util/ArrayList;

    .line 6265
    .local v15, "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v15, v1, v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Landroid/content/Context;)V

    if-eqz p3, :cond_f

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_f

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v15, v1, v2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 6271
    if-eqz p3, :cond_0

    .line 6272
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6262
    .end local v15    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_e
    const/16 v18, 0x0

    goto :goto_4

    .line 6265
    .restart local v15    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_f
    const/16 v18, 0x0

    goto :goto_5

    .line 6278
    .end local v15    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :sswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 6280
    .restart local v16    # "tid":J
    const-string v18, "Mms:app"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 6281
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "##### onQueryComplete (after delete): msg history result for threadId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6284
    :cond_10
    if-eqz p3, :cond_0

    .line 6287
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_12

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-nez v18, :cond_12

    .line 6291
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "##### MESSAGE_LIST_QUERY_AFTER_DELETE_TOKEN clearing thread id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v5

    .line 6295
    .local v5, "conv":Lcom/android/mms/data/Conversation;
    if-eqz v5, :cond_11

    .line 6296
    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6297
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 6301
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;)V

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11100(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    .line 6308
    .end local v5    # "conv":Lcom/android/mms/data/Conversation;
    :cond_12
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6135
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_1
        0x2537 -> :sswitch_0
        0x2538 -> :sswitch_2
    .end sparse-switch
.end method
