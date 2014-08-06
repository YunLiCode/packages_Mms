.class Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecipientListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/data/ContactList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "recipients"    # Lcom/android/mms/data/ContactList;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 122
    iput p2, p0, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->mResourceId:I

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 126
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 130
    iget-object v8, p0, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->mResourceId:I

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 132
    .local v3, "listItemView":Landroid/view/View;
    const v8, 0x7f0a0089

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 133
    .local v5, "nameView":Landroid/widget/TextView;
    const v8, 0x7f0a008b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 135
    .local v7, "numberView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 136
    .local v2, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 139
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    const v8, 0x7f0a002d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    .line 147
    .local v1, "badge":Landroid/widget/QuickContactBadge;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 152
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8, v9}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, "avatarDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-object v3

    .line 142
    .end local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "badge":Landroid/widget/QuickContactBadge;
    :cond_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    .restart local v1    # "badge":Landroid/widget/QuickContactBadge;
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_1
.end method
