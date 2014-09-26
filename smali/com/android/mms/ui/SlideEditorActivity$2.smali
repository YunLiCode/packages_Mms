.class Lcom/android/mms/ui/SlideEditorActivity$2;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 268
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$200(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 273
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$200(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 274
    .local v0, "size":I
    if-lez v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # operator-- for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$110(Lcom/android/mms/ui/SlideEditorActivity;)I

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    # invokes: Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$400(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 284
    .end local v0    # "size":I
    :cond_1
    :goto_0
    return-void

    .line 280
    .restart local v0    # "size":I
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    goto :goto_0
.end method
