.class Lcom/android/mms/ui/SlideEditorActivity$3;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;


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
    .line 287
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideEditorActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lcom/android/mms/ExceedMessageSizeException;
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v3, 0x7f0b004f

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v4, 0x7f0b01ed

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
