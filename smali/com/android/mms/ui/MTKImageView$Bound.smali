.class Lcom/android/mms/ui/MTKImageView$Bound;
.super Ljava/lang/Object;
.source "MTKImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MTKImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bound"
.end annotation


# instance fields
.field private height:I

.field final synthetic this$0:Lcom/android/mms/ui/MTKImageView;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MTKImageView;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/mms/ui/MTKImageView$Bound;->this$0:Lcom/android/mms/ui/MTKImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MTKImageView;Lcom/android/mms/ui/MTKImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/MTKImageView;
    .param p2, "x1"    # Lcom/android/mms/ui/MTKImageView$1;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MTKImageView$Bound;-><init>(Lcom/android/mms/ui/MTKImageView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MTKImageView$Bound;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView$Bound;

    .prologue
    .line 358
    iget v0, p0, Lcom/android/mms/ui/MTKImageView$Bound;->width:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MTKImageView$Bound;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView$Bound;
    .param p1, "x1"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/android/mms/ui/MTKImageView$Bound;->width:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MTKImageView$Bound;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView$Bound;

    .prologue
    .line 358
    iget v0, p0, Lcom/android/mms/ui/MTKImageView$Bound;->height:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/MTKImageView$Bound;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MTKImageView$Bound;
    .param p1, "x1"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/android/mms/ui/MTKImageView$Bound;->height:I

    return p1
.end method
