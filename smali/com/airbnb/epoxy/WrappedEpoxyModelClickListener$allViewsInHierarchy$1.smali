.class public final Lcom/airbnb/epoxy/WrappedEpoxyModelClickListener$allViewsInHierarchy$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExemptionMechanismException;->a(Landroid/view/View;)Lo/anb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Landroid/view/View;",
        "Lo/anb<",
        "+",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/ExemptionMechanismException;


# direct methods
.method public constructor <init>(Lo/ExemptionMechanismException;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/WrappedEpoxyModelClickListener$allViewsInHierarchy$1;->c:Lo/ExemptionMechanismException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)Lo/anb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lo/anb<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 106
    invoke-static {v0}, Lo/ane;->e([Ljava/lang/Object;)Lo/anb;

    move-result-object v0

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/epoxy/WrappedEpoxyModelClickListener$allViewsInHierarchy$1;->c:Lo/ExemptionMechanismException;

    invoke-static {v1, p1}, Lo/ExemptionMechanismException;->c(Lo/ExemptionMechanismException;Landroid/view/View;)Lo/anb;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/ane;->b()Lo/anb;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lo/ane;->e(Lo/anb;Lo/anb;)Lo/anb;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/WrappedEpoxyModelClickListener$allViewsInHierarchy$1;->d(Landroid/view/View;)Lo/anb;

    move-result-object p1

    return-object p1
.end method
