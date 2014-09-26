.class Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation


# instance fields
.field private mRowNumber:I

.field private mSnippet:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;


# direct methods
.method public constructor <init>(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;)V
    .locals 1
    .param p2, "row"    # I
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->this$1:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mSnippet:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    return v0
.end method


# virtual methods
.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mSnippet:Ljava/lang/String;

    return-object v0
.end method
