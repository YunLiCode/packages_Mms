.class Lcom/android/mms/ui/MessageListItem$9;
.super Landroid/widget/ArrayAdapter;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/text/style/URLSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;I[Landroid/text/style/URLSpan;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Landroid/text/style/URLSpan;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 890
    invoke-super/range {p0 .. p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 892
    .local v9, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$9;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/style/URLSpan;

    .line 893
    .local v4, "span":Landroid/text/style/URLSpan;
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    .line 894
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 895
    .local v7, "uri":Landroid/net/Uri;
    move-object v0, v9

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 896
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v11, v12, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 898
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 899
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 900
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 901
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v1, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 903
    :cond_0
    const-string v5, "tel:"

    .line 904
    .local v5, "telPrefix":Ljava/lang/String;
    const-string v10, "tel:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 905
    const-string v10, "tel:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "formatNum":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 908
    move-object v8, v2

    .line 914
    .end local v2    # "formatNum":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v3, "mailto:"

    .line 915
    .local v3, "mailPrefix":Ljava/lang/String;
    const-string v10, "mailto:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 916
    const-string v10, "mailto:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 918
    :cond_2
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "mailPrefix":Ljava/lang/String;
    .end local v4    # "span":Landroid/text/style/URLSpan;
    .end local v5    # "telPrefix":Ljava/lang/String;
    .end local v6    # "tv":Landroid/widget/TextView;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "url":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 910
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "formatNum":Ljava/lang/String;
    .restart local v4    # "span":Landroid/text/style/URLSpan;
    .restart local v5    # "telPrefix":Ljava/lang/String;
    .restart local v6    # "tv":Landroid/widget/TextView;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_3
    const-string v10, "tel:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 919
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "formatNum":Ljava/lang/String;
    .end local v4    # "span":Landroid/text/style/URLSpan;
    .end local v5    # "telPrefix":Ljava/lang/String;
    .end local v6    # "tv":Landroid/widget/TextView;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1
.end method
