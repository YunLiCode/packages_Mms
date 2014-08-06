.class public Lcom/android/mms/ui/ChipsRecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "ChipsRecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f040018

    return v0
.end method
