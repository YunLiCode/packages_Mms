.class Lcom/android/mms/ui/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$1;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .param p1, "updated"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$1;->this$0:Lcom/android/mms/ui/SearchActivity;

    # getter for: Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/mms/ui/SearchActivity;->access$000(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    return-void
.end method
