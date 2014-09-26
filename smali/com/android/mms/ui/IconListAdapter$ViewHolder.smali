.class Lcom/android/mms/ui/IconListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 47
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method
