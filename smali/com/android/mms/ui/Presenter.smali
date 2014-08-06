.class public abstract Lcom/android/mms/ui/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mModel:Lcom/android/mms/model/Model;

.field protected mView:Lcom/android/mms/ui/ViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/mms/ui/ViewInterface;
    .param p3, "model"    # Lcom/android/mms/model/Model;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    .line 38
    iput-object p3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    invoke-virtual {v0, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract cancelBackgroundLoading()V
.end method

.method public getModel()Lcom/android/mms/model/Model;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    return-object v0
.end method

.method public getView()Lcom/android/mms/ui/ViewInterface;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    return-object v0
.end method

.method public abstract present(Lcom/android/mms/util/ItemLoadedCallback;)V
.end method

.method public setModel(Lcom/android/mms/model/Model;)V
    .locals 0
    .param p1, "model"    # Lcom/android/mms/model/Model;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    .line 56
    return-void
.end method

.method public setView(Lcom/android/mms/ui/ViewInterface;)V
    .locals 0
    .param p1, "view"    # Lcom/android/mms/ui/ViewInterface;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    .line 48
    return-void
.end method
