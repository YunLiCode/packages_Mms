.class public Lcom/android/mms/data/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static blockingGetByUris([Landroid/net/Uri;)Lcom/android/mms/data/ContactList;
    .locals 9
    .param p0, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 52
    new-instance v5, Lcom/android/mms/data/ContactList;

    invoke-direct {v5}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 53
    .local v5, "list":Lcom/android/mms/data/ContactList;
    if-eqz p0, :cond_2

    array-length v7, p0

    if-lez v7, :cond_2

    .line 54
    move-object v0, p0

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 55
    .local v6, "uri":Landroid/net/Uri;
    const-string v7, "tel"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 57
    .local v1, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v5, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {p0}, Lcom/android/mms/data/Contact;->getByPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v5, v2}, Lcom/android/mms/data/ContactList;->addAll(Ljava/util/Collection;)Z

    .line 65
    .end local v0    # "arr$":[Landroid/net/Uri;
    .end local v2    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-object v5
.end method

.method public static getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;
    .locals 6
    .param p0, "spaceSepIds"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z

    .prologue
    .line 73
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 74
    .local v3, "list":Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/RecipientIdCache$Entry;

    .line 75
    .local v1, "entry":Lcom/android/mms/data/RecipientIdCache$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 77
    .local v0, "contact":Lcom/android/mms/data/Contact;
    iget-wide v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/data/Contact;->setRecipientId(J)V

    .line 78
    invoke-virtual {v3, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v0    # "contact":Lcom/android/mms/data/Contact;
    .end local v1    # "entry":Lcom/android/mms/data/RecipientIdCache$Entry;
    :cond_1
    return-object v3
.end method

.method public static getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;
    .locals 4
    .param p1, "canBlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "numbers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 20
    .local v1, "list":Lcom/android/mms/data/ContactList;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22
    invoke-static {v2, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;
    .locals 7
    .param p0, "semiSepNumbers"    # Ljava/lang/String;
    .param p1, "canBlock"    # Z
    .param p2, "replaceNumber"    # Z

    .prologue
    .line 31
    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 32
    .local v4, "list":Lcom/android/mms/data/ContactList;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 33
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 34
    invoke-static {v5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 35
    .local v1, "contact":Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {v1, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 32
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v5    # "number":Ljava/lang/String;
    :cond_2
    return-object v4
.end method


# virtual methods
.method public containsEmail()Z
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 116
    .local v0, "c":Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x1

    .line 120
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 155
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/ContactList;

    move-object v4, v0

    .line 158
    .local v4, "other":Lcom/android/mms/data/ContactList;
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 171
    .end local v4    # "other":Lcom/android/mms/data/ContactList;
    :goto_0
    return v5

    .line 163
    .restart local v4    # "other":Lcom/android/mms/data/ContactList;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 164
    .local v1, "c":Lcom/android/mms/data/Contact;
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 169
    .end local v1    # "c":Lcom/android/mms/data/Contact;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "other":Lcom/android/mms/data/ContactList;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public formatNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 94
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 96
    .local v0, "c":Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 98
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public formatNamesAndNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 103
    .local v4, "nans":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 104
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 105
    .local v0, "c":Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 107
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers(Z)[Ljava/lang/String;
    .locals 5
    .param p1, "scrubForMmsAddress"    # Z

    .prologue
    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v3, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 131
    .local v0, "c":Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "number":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 138
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    .end local v2    # "number":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const-string v0, ";"

    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
