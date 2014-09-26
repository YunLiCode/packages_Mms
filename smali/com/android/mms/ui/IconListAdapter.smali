.class public Lcom/android/mms/ui/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IconListAdapter$IconListItem;,
        Lcom/android/mms/ui/IconListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field private mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    const v0, 0x7f040013

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/mms/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040013

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-direct {v3, v2}, Lcom/android/mms/ui/IconListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    .line 77
    iget-object v3, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-virtual {v3}, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 85
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-virtual {v3}, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 89
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    return-object v2

    .line 79
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .line 80
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    iput-object v3, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    goto :goto_0
.end method
