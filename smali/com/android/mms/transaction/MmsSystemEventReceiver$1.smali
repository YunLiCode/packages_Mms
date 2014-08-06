.class Lcom/android/mms/transaction/MmsSystemEventReceiver$1;
.super Ljava/lang/Object;
.source "MmsSystemEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;

.field final synthetic val$contxt:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;->this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    iput-object p2, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;->val$contxt:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;->val$contxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setPendingMmsFailed(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;->val$contxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->setPendingSmsFailed(Landroid/content/Context;)V

    .line 103
    return-void
.end method
