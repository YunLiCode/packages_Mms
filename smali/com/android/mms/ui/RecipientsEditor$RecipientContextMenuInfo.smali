.class Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecipientContextMenuInfo"
.end annotation


# instance fields
.field final recipient:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact;)V
    .locals 0
    .param p1, "r"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 659
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;->recipient:Lcom/android/mms/data/Contact;

    .line 661
    return-void
.end method
