.class Lcom/android/mms/ui/SlideEditorActivity$1;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z

    .line 263
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setResult(I)V

    .line 265
    return-void

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
