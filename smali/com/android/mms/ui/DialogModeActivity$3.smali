.class Lcom/android/mms/ui/DialogModeActivity$3;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->markAsRead(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$3;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iput-object p2, p0, Lcom/android/mms/ui/DialogModeActivity$3;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 439
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 440
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string v0, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$3;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DialogModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$3;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/DialogModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$3;->val$uri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$3;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    const-wide/16 v1, -0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 447
    return-void
.end method
