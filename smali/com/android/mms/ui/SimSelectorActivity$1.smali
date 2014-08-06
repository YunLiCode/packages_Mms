.class Lcom/android/mms/ui/SimSelectorActivity$1;
.super Ljava/lang/Thread;
.source "SimSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SimSelectorActivity;->deleteFromSim([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SimSelectorActivity;

.field final synthetic val$ids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimSelectorActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->val$ids:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->val$ids:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iget-object v3, v3, Lcom/android/mms/ui/BaseSelectorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->val$ids:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 60
    .local v2, "simUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimSelectorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4, v2, v5, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "simUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SimSelectorActivity$1;->this$0:Lcom/android/mms/ui/SimSelectorActivity;

    # getter for: Lcom/android/mms/ui/SimSelectorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SimSelectorActivity;->access$000(Lcom/android/mms/ui/SimSelectorActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3ec

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 63
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 64
    return-void
.end method
