.class Lcom/android/mms/ui/SimSelectorActivity$3;
.super Landroid/os/Handler;
.source "SimSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SimSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SimSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimSelectorActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 113
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    move-object v4, v6

    check-cast v4, [Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;

    .line 116
    .local v4, "items":[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    const v7, 0x7f0b01d2

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/SimSelectorActivity;->refresh(I)V

    .line 117
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    # invokes: Lcom/android/mms/ui/SimSelectorActivity;->copyToPhoneMemory([Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V
    invoke-static {v6, v4}, Lcom/android/mms/ui/SimSelectorActivity;->access$200(Lcom/android/mms/ui/SimSelectorActivity;[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;)V

    goto :goto_0

    .line 120
    .end local v4    # "items":[Lcom/android/mms/ui/SimSelectorActivity$SimMessageItem;
    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iget-object v6, v6, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 122
    .local v0, "allcount":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 123
    .local v1, "failedcount":I
    sub-int v5, v0, v1

    .line 124
    .local v5, "successcount":I
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    const v7, 0x7f0b01d4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/SimSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "info":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    invoke-static {v6, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    invoke-virtual {v6, v11}, Lcom/android/mms/ui/SimSelectorActivity;->setResult(I)V

    .line 127
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/SimSelectorActivity;->finish()V

    goto :goto_0

    .line 130
    .end local v0    # "allcount":I
    .end local v1    # "failedcount":I
    .end local v3    # "info":Ljava/lang/String;
    .end local v5    # "successcount":I
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 131
    .local v2, "ids":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    const v7, 0x7f0b01d0

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/SimSelectorActivity;->refresh(I)V

    .line 132
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    # invokes: Lcom/android/mms/ui/SimSelectorActivity;->deleteFromSim([Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/android/mms/ui/SimSelectorActivity;->access$300(Lcom/android/mms/ui/SimSelectorActivity;[Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v2    # "ids":[Ljava/lang/String;
    :pswitch_3
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iget-object v6, v6, Lcom/android/mms/ui/BaseSelectorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    invoke-virtual {v6, v11}, Lcom/android/mms/ui/SimSelectorActivity;->setResult(I)V

    .line 137
    iget-object v6, p0, Lcom/android/mms/ui/SimSelectorActivity$3;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/SimSelectorActivity;->finish()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
