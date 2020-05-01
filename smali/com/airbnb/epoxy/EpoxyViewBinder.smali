.class public final Lcom/airbnb/epoxy/EpoxyViewBinder;
.super Lo/OfPrimitive;
.source ""


# instance fields
.field private interceptor:Lo/OfPrimitive$Application;

.field private tempModel:Lo/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/OfPrimitive;-><init>()V

    return-void
.end method

.method private final bind(Lo/Consumer;Lo/BiConsumer;Lo/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 213
    invoke-static {p3, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lo/Consumer;->d(Lo/BiConsumer;Lo/BiConsumer;Ljava/util/List;I)V

    .line 215
    iget-object p2, p1, Lo/Consumer;->itemView:Landroid/view/View;

    const-string p3, "viewHolder.itemView"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->setViewHolder(Landroid/view/View;Lo/Consumer;)V

    :cond_0
    return-void
.end method

.method private final getViewHolder(Landroid/view/View;)Lo/Consumer;
    .locals 1

    .line 232
    sget v0, Lo/IHwInterface$FragmentManager;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Consumer;

    return-object p1
.end method

.method private final hasSameViewType(Lo/BiConsumer;Lo/BiConsumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;",
            "Lo/BiConsumer<",
            "*>;)Z"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result p1

    invoke-static {p2}, Lo/KeyAgreement;->a(Lo/BiConsumer;)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final setViewHolder(Landroid/view/View;Lo/Consumer;)V
    .locals 1

    .line 231
    sget v0, Lo/IHwInterface$FragmentManager;->o:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic addAfterInterceptorCallback(Lo/OfPrimitive$StateListAnimator;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->addAfterInterceptorCallback$widgetry_release(Lo/OfPrimitive$StateListAnimator;)V

    return-void
.end method

.method public addAfterInterceptorCallback$widgetry_release(Lo/OfPrimitive$StateListAnimator;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addInterceptor(Lo/OfPrimitive$Application;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->interceptor:Lo/OfPrimitive$Application;

    return-void
.end method

.method public synthetic addInternal(Lo/BiConsumer;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->addInternal$widgetry_release(Lo/BiConsumer;)V

    return-void
.end method

.method public addInternal$widgetry_release(Lo/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "modelToAdd"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->tempModel:Lo/BiConsumer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->interceptor:Lo/OfPrimitive$Application;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/OfPrimitive$Application;->b(Ljava/util/List;)V

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->tempModel:Lo/BiConsumer;

    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A model was already added to the EpoxyController. Only one should be added. "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final bind(Landroid/view/View;Lo/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lo/BiConsumer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->getViewHolder(Landroid/view/View;)Lo/Consumer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v2

    const-string v3, "existingHolder.model"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/airbnb/epoxy/EpoxyViewBinder;->hasSameViewType(Lo/BiConsumer;Lo/BiConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    new-instance v2, Lo/Consumer;

    invoke-direct {v2, p1, v0}, Lo/Consumer;-><init>(Landroid/view/View;Z)V

    :goto_1
    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, v2, p2, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->bind(Lo/Consumer;Lo/BiConsumer;Lo/BiConsumer;)V

    return-void

    .line 61
    :cond_3
    move-object p2, p0

    check-cast p2, Lcom/airbnb/epoxy/EpoxyViewBinder;

    const/16 p2, 0x8

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic bind(Landroid/view/View;Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            "T:",
            "Lo/BiConsumer<",
            "TV;>;>(TV;",
            "Lo/alA<",
            "-TT;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelBuilder"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    .line 169
    invoke-static {v0, v1}, Lo/amh;->a(ILjava/lang/String;)V

    const-class v0, Lo/BiConsumer;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/epoxy/EpoxyViewBinder;->bind(Landroid/view/View;Lo/BiConsumer;)V

    return-void
.end method

.method public buildModels()V
    .locals 0

    return-void
.end method

.method public final insertInto(Landroid/view/ViewGroup;Lo/alA;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/alA<",
            "-",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 184
    invoke-interface {p2, p0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object p2, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->tempModel:Lo/BiConsumer;

    if-eqz p2, :cond_5

    .line 191
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, v0}, Lcom/airbnb/epoxy/EpoxyViewBinder;->getViewHolder(Landroid/view/View;)Lo/Consumer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v0}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v3

    const-string v4, "existingHolder.model"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v3}, Lcom/airbnb/epoxy/EpoxyViewBinder;->hasSameViewType(Lo/BiConsumer;Lo/BiConsumer;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    goto :goto_3

    .line 196
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 197
    invoke-virtual {p2, p1}, Lo/BiConsumer;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 198
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 199
    new-instance p1, Lo/Consumer;

    invoke-direct {p1, v3, v2}, Lo/Consumer;-><init>(Landroid/view/View;Z)V

    :goto_3
    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {v0}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/airbnb/epoxy/EpoxyViewBinder;->bind(Lo/Consumer;Lo/BiConsumer;Lo/BiConsumer;)V

    .line 205
    check-cast v1, Lo/BiConsumer;

    iput-object v1, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->tempModel:Lo/BiConsumer;

    return-void

    .line 186
    :cond_5
    move-object p2, p0

    check-cast p2, Lcom/airbnb/epoxy/EpoxyViewBinder;

    .line 187
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    .line 180
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Container cannot have more than one child"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public synthetic isModelAddedMultipleTimes(Lo/BiConsumer;)Z
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->isModelAddedMultipleTimes$widgetry_release(Lo/BiConsumer;)Z

    move-result p1

    return p1
.end method

.method public isModelAddedMultipleTimes$widgetry_release(Lo/BiConsumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final replaceOrCreateView(Landroid/view/ViewGroup;Landroid/view/View;Lo/BiConsumer;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lo/BiConsumer<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 94
    invoke-direct {p0, p2}, Lcom/airbnb/epoxy/EpoxyViewBinder;->getViewHolder(Landroid/view/View;)Lo/Consumer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {v1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v2

    const-string v3, "existingHolder.model"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v2}, Lcom/airbnb/epoxy/EpoxyViewBinder;->hasSameViewType(Lo/BiConsumer;Lo/BiConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    goto :goto_3

    .line 98
    :cond_2
    :goto_1
    invoke-virtual {p3, p1}, Lo/BiConsumer;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "newView"

    .line 99
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    :goto_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setId(I)V

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    new-instance p1, Lo/Consumer;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lo/Consumer;-><init>(Landroid/view/View;Z)V

    .line 107
    :goto_3
    invoke-direct {p0, p1, p3, v0}, Lcom/airbnb/epoxy/EpoxyViewBinder;->bind(Lo/Consumer;Lo/BiConsumer;Lo/BiConsumer;)V

    .line 108
    iget-object p1, p1, Lo/Consumer;->itemView:Landroid/view/View;

    const-string p2, "viewHolder.itemView"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final replaceView(Landroid/view/View;Lo/BiConsumer;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/BiConsumer<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "previousView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previousView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lo/Binder;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EBT"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 139
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->getViewHolder(Landroid/view/View;)Lo/Consumer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v2

    const-string v3, "existingHolder.model"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/airbnb/epoxy/EpoxyViewBinder;->hasSameViewType(Lo/BiConsumer;Lo/BiConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {p2, v2}, Lo/BiConsumer;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v4, "newView"

    .line 145
    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 147
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 148
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v2, Lo/Consumer;

    invoke-direct {v2, v3, v1}, Lo/Consumer;-><init>(Landroid/view/View;Z)V

    .line 156
    :goto_1
    iget-object v3, v2, Lo/Consumer;->itemView:Landroid/view/View;

    .line 327
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setId(I)V

    const-string p1, "viewHolder.itemView.appl\u2026previousView.id\n        }"

    .line 156
    invoke-static {v3, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, v2, p2, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->bind(Lo/Consumer;Lo/BiConsumer;Lo/BiConsumer;)V

    return-object v3

    .line 143
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_4
    move-object p2, p0

    check-cast p2, Lcom/airbnb/epoxy/EpoxyViewBinder;

    const/16 p2, 0x8

    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public final replaceView(Landroid/view/View;Lo/alA;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/alA<",
            "-",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "previousView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p2, p0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p2, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->tempModel:Lo/BiConsumer;

    const/4 v0, 0x0

    .line 118
    check-cast v0, Lo/BiConsumer;

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyViewBinder;->tempModel:Lo/BiConsumer;

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/epoxy/EpoxyViewBinder;->replaceView(Landroid/view/View;Lo/BiConsumer;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final unbind(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/EpoxyViewBinder;->getViewHolder(Landroid/view/View;)Lo/Consumer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    check-cast v0, Lo/Consumer;

    invoke-direct {p0, p1, v0}, Lcom/airbnb/epoxy/EpoxyViewBinder;->setViewHolder(Landroid/view/View;Lo/Consumer;)V

    :cond_0
    return-void
.end method
