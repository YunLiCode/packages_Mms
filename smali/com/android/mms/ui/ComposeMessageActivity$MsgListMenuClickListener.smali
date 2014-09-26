.class final Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p2, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2165
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2166
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2170
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v8, :cond_0

    .line 2171
    const/4 v8, 0x0

    .line 2265
    :goto_0
    return v8

    .line 2174
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 2265
    :pswitch_0
    const/4 v8, 0x0

    goto :goto_0

    .line 2176
    :pswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2177
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2178
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2179
    const/4 v8, 0x1

    goto :goto_0

    .line 2182
    :pswitch_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 2183
    const/4 v8, 0x1

    goto :goto_0

    .line 2186
    :pswitch_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2187
    const/4 v8, 0x1

    goto :goto_0

    .line 2190
    :pswitch_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->resendMessage(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2191
    const/4 v8, 0x1

    goto :goto_0

    .line 2194
    :pswitch_5
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v10, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    .line 2197
    const/4 v8, 0x1

    goto :goto_0

    .line 2200
    :pswitch_6
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z

    move-result v8

    goto :goto_0

    .line 2203
    :pswitch_7
    new-instance v4, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {v4, v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2204
    .local v4, "l":Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v9, v9, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v8, v4, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6500(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 2205
    const/4 v8, 0x1

    goto :goto_0

    .line 2208
    .end local v4    # "l":Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :pswitch_8
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->showDeliveryReport(JLjava/lang/String;)V
    invoke-static {v8, v9, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    .line 2209
    const/4 v8, 0x1

    goto :goto_0

    .line 2212
    :pswitch_9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(J)Z
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6700(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v7

    .line 2213
    .local v7, "result":Z
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2217
    .end local v7    # "result":Z
    :pswitch_a
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v12, v12, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->saveRingtone(J)Z
    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6800(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v11

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getDrmMimeSavedStringRsrc(JZ)I
    invoke-static {v8, v9, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6900(Lcom/android/mms/ui/ComposeMessageActivity;JZ)I

    move-result v6

    .line 2219
    .local v6, "resId":I
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 2220
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2224
    .end local v6    # "resId":I
    :pswitch_b
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v10, 0x1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    .line 2225
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2229
    :pswitch_c
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v10, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    .line 2230
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2234
    :pswitch_d
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->hasIccCardCount()I
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 2235
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v8

    new-array v3, v8, [Ljava/lang/String;

    .line 2237
    .local v3, "items":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_1

    .line 2238
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/android/mms/ui/MessageUtils;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    .line 2237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2240
    :cond_1
    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {v5, v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2241
    .local v5, "listener":Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v10, 0x7f0b01cc

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->getSimName()Ljava/lang/String;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x108009b

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2251
    .end local v1    # "i":I
    .end local v3    # "items":[Ljava/lang/String;
    .end local v5    # "listener":Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimSelectListener;
    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2249
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {v9, v10, v11}, Lcom/android/mms/ui/ComposeMessageActivity$CopyToSimThread;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 2255
    :pswitch_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "copyurl"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2256
    .local v0, "copyedUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v8, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 2257
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2260
    .end local v0    # "copyedUrl":Ljava/lang/String;
    :pswitch_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2261
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v8, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2262
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2174
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method
