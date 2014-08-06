.class Lcom/android/mms/ui/RecipientsEditor$AddressValidator;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/RecipientsEditor;
    .param p2, "x1"    # Lcom/android/mms/ui/RecipientsEditor$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "invalidText"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
