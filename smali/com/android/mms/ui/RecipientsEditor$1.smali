.class Lcom/android/mms/ui/RecipientsEditor$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAffected:[Landroid/text/Annotation;

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 135
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    if-eqz v4, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .local v1, "arr$":[Landroid/text/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 137
    .local v0, "a":Landroid/text/Annotation;
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "a":Landroid/text/Annotation;
    .end local v1    # "arr$":[Landroid/text/Annotation;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 141
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    check-cast p1, Landroid/text/Spanned;

    .end local p1    # "s":Ljava/lang/CharSequence;
    add-int v0, p2, p3

    const-class v1, Landroid/text/Annotation;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 119
    if-nez p3, :cond_1

    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    .line 122
    :try_start_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 123
    .local v0, "c":C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    # setter for: Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C
    invoke-static {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->access$202(Lcom/android/mms/ui/RecipientsEditor;C)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "c":C
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "Trace"

    const-string v3, "onTextChanged  crash"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
