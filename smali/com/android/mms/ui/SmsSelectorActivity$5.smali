.class Lcom/android/mms/ui/SmsSelectorActivity$5;
.super Landroid/os/Handler;
.source "SmsSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 216
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const v13, 0x7f0b01d2

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SmsSelectorActivity;->refresh(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    # invokes: Lcom/android/mms/ui/SmsSelectorActivity;->moveToSim([Ljava/lang/Object;)V
    invoke-static {v13, v12}, Lcom/android/mms/ui/SmsSelectorActivity;->access$200(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v12, v12, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 222
    .local v1, "allcount":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 223
    .local v2, "failedcount":I
    sub-int v11, v1, v2

    .line 226
    .local v11, "successcount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const v13, 0x7f0b01d4

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "info":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const/4 v13, 0x0

    invoke-static {v12, v4, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SmsSelectorActivity;->setResult(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v12}, Lcom/android/mms/ui/SmsSelectorActivity;->finish()V

    goto :goto_0

    .line 232
    .end local v1    # "allcount":I
    .end local v2    # "failedcount":I
    .end local v4    # "info":Ljava/lang/String;
    .end local v11    # "successcount":I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object v3, v12

    check-cast v3, [Ljava/lang/String;

    .line 233
    .local v3, "ids":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const v13, 0x7f0b01d0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SmsSelectorActivity;->refresh(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const/4 v13, 0x0

    aget-object v13, v3, v13

    const/4 v14, 0x1

    aget-object v14, v3, v14

    # invokes: Lcom/android/mms/ui/SmsSelectorActivity;->deleteSms(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->access$300(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v3    # "ids":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v12, v12, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SmsSelectorActivity;->setResult(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v12}, Lcom/android/mms/ui/SmsSelectorActivity;->finish()V

    goto/16 :goto_0

    .line 243
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    move-object v9, v12

    check-cast v9, [Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;

    .line 244
    .local v9, "sim_items":[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const v13, 0x7f0b01d2

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SmsSelectorActivity;->refresh(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # invokes: Lcom/android/mms/ui/SmsSelectorActivity;->moveToPhone([Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V
    invoke-static {v12, v9}, Lcom/android/mms/ui/SmsSelectorActivity;->access$400(Lcom/android/mms/ui/SmsSelectorActivity;[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;)V

    goto/16 :goto_0

    .line 248
    .end local v9    # "sim_items":[Lcom/android/mms/ui/SmsSelectorActivity$SimMessageItem;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v12, v12, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 249
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 250
    .local v5, "sim_allcount":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 251
    .local v6, "sim_failedcount":I
    sub-int v10, v5, v6

    .line 252
    .local v10, "sim_successcount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const v13, 0x7f0b01d4

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/ui/SmsSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "sim_info":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const/4 v13, 0x0

    invoke-static {v12, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SmsSelectorActivity;->setResult(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v12}, Lcom/android/mms/ui/SmsSelectorActivity;->finish()V

    goto/16 :goto_0

    .line 258
    .end local v5    # "sim_allcount":I
    .end local v6    # "sim_failedcount":I
    .end local v8    # "sim_info":Ljava/lang/String;
    .end local v10    # "sim_successcount":I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object v7, v12

    check-cast v7, [Ljava/lang/String;

    .line 259
    .local v7, "sim_ids":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    const v13, 0x7f0b01d0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/SmsSelectorActivity;->refresh(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SmsSelectorActivity$5;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # invokes: Lcom/android/mms/ui/SmsSelectorActivity;->deleteFromSim([Ljava/lang/String;)V
    invoke-static {v12, v7}, Lcom/android/mms/ui/SmsSelectorActivity;->access$500(Lcom/android/mms/ui/SmsSelectorActivity;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_3
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_5
        0x7d3 -> :sswitch_6
        0x7d4 -> :sswitch_3
    .end sparse-switch
.end method
