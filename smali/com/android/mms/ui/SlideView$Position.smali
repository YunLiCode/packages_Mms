.class Lcom/android/mms/ui/SlideView$Position;
.super Ljava/lang/Object;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# instance fields
.field public mLeft:I

.field public mTop:I

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideView;II)V
    .locals 0
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$Position;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput p3, p0, Lcom/android/mms/ui/SlideView$Position;->mTop:I

    .line 473
    iput p2, p0, Lcom/android/mms/ui/SlideView$Position;->mLeft:I

    .line 474
    return-void
.end method
