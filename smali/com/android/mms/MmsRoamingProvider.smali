.class public Lcom/android/mms/MmsRoamingProvider;
.super Landroid/content/ContentProvider;
.source "MmsRoamingProvider.java"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field mCols:[Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/MmsRoamingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/android/mms/MmsRoamingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.MmsRoaming"

    const-string v2, "mms_roaming"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mms_roaming"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/MmsRoamingProvider;->mCols:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/mms/MmsRoamingProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsRoamingProvider;->mPreferences:Landroid/content/SharedPreferences;

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    sget-object v5, Lcom/android/mms/MmsRoamingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 86
    iget-object v5, p0, Lcom/android/mms/MmsRoamingProvider;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_key_mms_retrieval_during_roaming"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 88
    .local v1, "enable":Z
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v5, p0, Lcom/android/mms/MmsRoamingProvider;->mCols:[Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 89
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 94
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local v1    # "enable":Z
    .end local v2    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    .restart local v1    # "enable":Z
    .restart local v2    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    move v3, v4

    .line 90
    goto :goto_0

    .line 94
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local v1    # "enable":Z
    .end local v2    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 71
    sget-object v2, Lcom/android/mms/MmsRoamingProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "mms_roaming"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "mms_roaming"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 74
    .local v0, "enable":Z
    iget-object v2, p0, Lcom/android/mms/MmsRoamingProvider;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_key_mms_retrieval_during_roaming"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    .end local v0    # "enable":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
