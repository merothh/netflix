.class public final Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# instance fields
.field private final a:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/airbnb/epoxy/EpoxyViewBinder;

.field private c:Landroid/view/View;

.field private final d:Landroidx/fragment/app/Fragment;

.field private final e:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ILo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Lo/alA<",
            "-",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->d:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->e:I

    iput-object p3, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->a:Lo/alA;

    .line 287
    new-instance p1, Lcom/airbnb/epoxy/EpoxyViewBinder;

    invoke-direct {p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;-><init>()V

    iput-object p1, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->b:Lcom/airbnb/epoxy/EpoxyViewBinder;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->c:Landroid/view/View;

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "fragment.view ?: error(\"\u2026ent view is not created\")"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget v1, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->c:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v0

    const-string v1, "fragment.viewLifecycleOwner"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/ClassCircularityError;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View could not be found"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment view is not created"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 303
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->c:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {}, Lo/amh;->c()V

    :cond_3
    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->b:Lcom/airbnb/epoxy/EpoxyViewBinder;

    invoke-virtual {p0}, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->a()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->a:Lo/alA;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/epoxy/EpoxyViewBinder;->replaceView(Landroid/view/View;Lo/alA;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->c:Landroid/view/View;

    return-void
.end method

.method public final onViewDestroyed()V
    .locals 2
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->b:Lcom/airbnb/epoxy/EpoxyViewBinder;

    invoke-virtual {v1, v0}, Lcom/airbnb/epoxy/EpoxyViewBinder;->unbind(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 317
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->c:Landroid/view/View;

    return-void
.end method
