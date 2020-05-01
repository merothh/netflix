.class final Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController;
.super Lo/OfPrimitive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/EpoxyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModelBuilderCallbackController"
.end annotation


# instance fields
.field private callback:Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 484
    invoke-direct {p0}, Lo/OfPrimitive;-><init>()V

    .line 485
    new-instance v0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController$ActionBar;

    invoke-direct {v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController$ActionBar;-><init>()V

    check-cast v0, Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController;->callback:Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;

    return-void
.end method


# virtual methods
.method public buildModels()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController;->callback:Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;

    move-object v1, p0

    check-cast v1, Lo/OfPrimitive;

    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;->b(Lo/OfPrimitive;)V

    return-void
.end method

.method public final getCallback()Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController;->callback:Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;

    return-object v0
.end method

.method public final setCallback(Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$ModelBuilderCallbackController;->callback:Lcom/airbnb/epoxy/EpoxyRecyclerView$StateListAnimator;

    return-void
.end method
