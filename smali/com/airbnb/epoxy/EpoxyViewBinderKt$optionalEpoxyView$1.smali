.class public final Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IntFunction;->d(Landroidx/fragment/app/Fragment;ILo/alA;Lo/alA;)Lo/aka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Lo/alA;

.field final synthetic d:I

.field final synthetic e:Lo/alA;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ILo/alA;Lo/alA;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->b:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->d:I

    iput-object p3, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->c:Lo/alA;

    iput-object p4, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->e:Lo/alA;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "view ?: error(\"Fragment \u2026ew has not been created\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget v1, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    iget-object v1, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->b:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->d:I

    iget-object v3, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->c:Lo/alA;

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;-><init>(Landroidx/fragment/app/Fragment;ILo/alA;)V

    iget-object v1, p0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->e:Lo/alA;

    invoke-interface {v1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment view has not been created"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;->c()Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    move-result-object v0

    return-object v0
.end method
