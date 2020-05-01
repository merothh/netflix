.class final Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController;
.super Lo/OfPrimitive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/EpoxyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithModelsController"
.end annotation


# instance fields
.field private callback:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "-",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 452
    invoke-direct {p0}, Lo/OfPrimitive;-><init>()V

    .line 453
    sget-object v0, Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController$callback$1;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController$callback$1;

    check-cast v0, Lo/alA;

    iput-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController;->callback:Lo/alA;

    return-void
.end method


# virtual methods
.method public buildModels()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController;->callback:Lo/alA;

    invoke-interface {v0, p0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCallback()Lo/alA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alA<",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController;->callback:Lo/alA;

    return-object v0
.end method

.method public final setCallback(Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iput-object p1, p0, Lcom/airbnb/epoxy/EpoxyRecyclerView$WithModelsController;->callback:Lo/alA;

    return-void
.end method
