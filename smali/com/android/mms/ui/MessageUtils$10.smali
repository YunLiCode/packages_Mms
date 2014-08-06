.class final Lcom/android/mms/ui/MessageUtils$10;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$10;->val$msgUri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/mms/ui/MessageUtils$10;->val$requestCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$10;->val$msgUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/mms/ui/MessageUtils$10;->val$requestCode:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->launchSlideshowActivity(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 1118
    return-void
.end method
