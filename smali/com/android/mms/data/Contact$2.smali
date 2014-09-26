.class final Lcom/android/mms/data/Contact$2;
.super Landroid/database/ContentObserver;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 67
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "presence changed, invalidate cache"

    # invokes: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 71
    return-void
.end method
