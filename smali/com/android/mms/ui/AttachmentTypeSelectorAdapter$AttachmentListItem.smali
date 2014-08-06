.class public Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;
.super Lcom/android/mms/ui/IconListAdapter$IconListItem;
.source "AttachmentTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resource"    # I
    .param p3, "command"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;->mCommand:I

    .line 110
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;->mCommand:I

    return v0
.end method
