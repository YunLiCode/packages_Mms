.class Lcom/android/mms/ui/SmsSelectorActivity$1;
.super Ljava/lang/Thread;
.source "SmsSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSelectorActivity;->deleteSms(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSelectorActivity;

.field final synthetic val$mmsids:Ljava/lang/String;

.field final synthetic val$smsids:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSelectorActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$smsids:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$mmsids:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 76
    iget-object v7, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$smsids:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$smsids:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$smsids:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "projection":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v8}, Lcom/android/mms/ui/SmsSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v8, v9, v5, v11}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    .end local v5    # "projection":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$mmsids:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$mmsids:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$mmsids:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .restart local v5    # "projection":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    invoke-virtual {v8}, Lcom/android/mms/ui/SmsSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v8, v9, v5, v11}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    iget-object v7, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->val$mmsids:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "mmsMsgIds":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_1

    .line 86
    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 87
    .local v3, "msgid":J
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 88
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/mms/util/PduLoaderManager;->removePdu(Landroid/net/Uri;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    .end local v2    # "mmsMsgIds":[Ljava/lang/String;
    .end local v3    # "msgid":J
    .end local v5    # "projection":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/SmsSelectorActivity$1;->this$0:Lcom/android/mms/ui/SmsSelectorActivity;

    # getter for: Lcom/android/mms/ui/SmsSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/mms/ui/SmsSelectorActivity;->access$000(Lcom/android/mms/ui/SmsSelectorActivity;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x3ec

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 93
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 94
    return-void
.end method
