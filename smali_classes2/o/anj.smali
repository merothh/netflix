.class public Lo/anj;
.super Lo/ang;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/ang;-><init>()V

    return-void
.end method

.method public static final b()Lo/anb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation

    .line 40
    sget-object v0, Lo/amY;->a:Lo/amY;

    check-cast v0, Lo/anb;

    return-object v0
.end method

.method public static final c(Ljava/util/Iterator;)Lo/anb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asSequence"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lo/anj$TaskDescription;

    invoke-direct {v0, p0}, Lo/anj$TaskDescription;-><init>(Ljava/util/Iterator;)V

    check-cast v0, Lo/anb;

    invoke-static {v0}, Lo/ane;->e(Lo/anb;)Lo/anb;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lo/anb;)Lo/anb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/anb<",
            "+",
            "Lo/anb<",
            "+TT;>;>;)",
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$flatten"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lkotlin/sequences/SequencesKt__SequencesKt$flatten$1;->d:Lkotlin/sequences/SequencesKt__SequencesKt$flatten$1;

    check-cast v0, Lo/alA;

    invoke-static {p0, v0}, Lo/anj;->e(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lo/anb;)Lo/anb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/anb<",
            "+TT;>;)",
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$constrainOnce"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    instance-of v0, p0, Lo/amX;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/amX;

    invoke-direct {v0, p0}, Lo/amX;-><init>(Lo/anb;)V

    move-object p0, v0

    check-cast p0, Lo/anb;

    :goto_0
    return-object p0
.end method

.method private static final e(Lo/anb;Lo/alA;)Lo/anb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/anb<",
            "+TT;>;",
            "Lo/alA<",
            "-TT;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "Lo/anb<",
            "TR;>;"
        }
    .end annotation

    .line 89
    instance-of v0, p0, Lo/ann;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Lo/ann;

    invoke-virtual {p0, p1}, Lo/ann;->d(Lo/alA;)Lo/anb;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    new-instance v0, Lo/amW;

    sget-object v1, Lkotlin/sequences/SequencesKt__SequencesKt$flatten$3;->a:Lkotlin/sequences/SequencesKt__SequencesKt$flatten$3;

    check-cast v1, Lo/alA;

    invoke-direct {v0, p0, v1, p1}, Lo/amW;-><init>(Lo/anb;Lo/alA;Lo/alA;)V

    check-cast v0, Lo/anb;

    return-object v0
.end method

.method public static final varargs e([Ljava/lang/Object;)Lo/anb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lo/ane;->b()Lo/anb;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lo/ako;->f([Ljava/lang/Object;)Lo/anb;

    move-result-object p0

    :goto_1
    return-object p0
.end method
