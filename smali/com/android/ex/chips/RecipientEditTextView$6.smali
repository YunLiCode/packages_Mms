.class Lcom/android/ex/chips/RecipientEditTextView$6;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->scrollBottomIntoView()V
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$700(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 435
    :cond_0
    return-void
.end method
