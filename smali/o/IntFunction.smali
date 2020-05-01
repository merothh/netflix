.class public final Lo/IntFunction;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final d(Landroidx/fragment/app/Fragment;ILo/alA;Lo/alA;)Lo/aka;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Lo/alA<",
            "-",
            "Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;",
            "Lo/akj;",
            ">;",
            "Lo/alA<",
            "-",
            "Lo/OfPrimitive;",
            "Lo/akj;",
            ">;)",
            "Lo/aka<",
            "Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$optionalEpoxyView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v0, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/airbnb/epoxy/EpoxyViewBinderKt$optionalEpoxyView$1;-><init>(Landroidx/fragment/app/Fragment;ILo/alA;Lo/alA;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p0

    return-object p0
.end method
