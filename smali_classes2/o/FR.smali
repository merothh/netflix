.class public final Lo/FR;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final synthetic b(ILo/amT;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/FR;->c(ILo/amT;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lo/FU;I)Lo/ams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Lo/FU;",
            "I)",
            "Lo/ams<",
            "Lo/FU;",
            "TV;>;"
        }
    .end annotation

    const-string v0, "$this$bindRequiredView"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lo/FR;->c(Lo/FU;)Lo/alN;

    move-result-object p0

    invoke-static {p1, p0}, Lo/FR;->c(ILo/alN;)Lo/FV;

    move-result-object p0

    check-cast p0, Lo/ams;

    return-object p0
.end method

.method private static final c(ILo/amT;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/amT<",
            "*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/amT;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' not found."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final c(ILo/alN;)Lo/FV;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroid/view/View;",
            ">(I",
            "Lo/alN<",
            "-TT;-",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Lo/FV<",
            "TT;TV;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lo/FV;

    new-instance v1, Lcom/netflix/mediaclient/ui/epoxy/KotlinEpoxyHolderKt$required$1;

    invoke-direct {v1, p1, p0}, Lcom/netflix/mediaclient/ui/epoxy/KotlinEpoxyHolderKt$required$1;-><init>(Lo/alN;I)V

    check-cast v1, Lo/alN;

    invoke-direct {v0, v1}, Lo/FV;-><init>(Lo/alN;)V

    return-object v0
.end method

.method private static final c(Lo/FU;)Lo/alN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FU;",
            ")",
            "Lo/alN<",
            "Lo/FU;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object p0, Lcom/netflix/mediaclient/ui/epoxy/KotlinEpoxyHolderKt$viewFinder$1;->a:Lcom/netflix/mediaclient/ui/epoxy/KotlinEpoxyHolderKt$viewFinder$1;

    check-cast p0, Lo/alN;

    return-object p0
.end method
