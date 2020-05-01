.class public final Lo/apR;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Lo/api<",
            "*>;",
            "Lo/alj$StateListAnimator;",
            "Lo/api<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final b:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Lo/apQ;",
            "Lo/alj$StateListAnimator;",
            "Lo/apQ;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lo/apN;

.field private static final d:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Lo/apQ;",
            "Lo/alj$StateListAnimator;",
            "Lo/apQ;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Ljava/lang/Object;",
            "Lo/alj$StateListAnimator;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lo/apN;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apR;->c:Lo/apN;

    .line 26
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->d:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    check-cast v0, Lo/alN;

    sput-object v0, Lo/apR;->e:Lo/alN;

    .line 36
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->c:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    check-cast v0, Lo/alN;

    sput-object v0, Lo/apR;->a:Lo/alN;

    .line 43
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->a:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    check-cast v0, Lo/alN;

    sput-object v0, Lo/apR;->d:Lo/alN;

    .line 52
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->b:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    check-cast v0, Lo/alN;

    sput-object v0, Lo/apR;->b:Lo/alN;

    return-void
.end method

.method public static final a(Lo/alj;Ljava/lang/Object;)V
    .locals 2

    .line 85
    sget-object v0, Lo/apR;->c:Lo/apN;

    if-ne p1, v0, :cond_0

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lo/apQ;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lo/apQ;

    invoke-virtual {v0}, Lo/apQ;->a()V

    .line 89
    sget-object v0, Lo/apR;->b:Lo/alN;

    invoke-interface {p0, p1, v0}, Lo/alj;->fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lo/apR;->a:Lo/alN;

    invoke-interface {p0, v0, v1}, Lo/alj;->fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lo/api;

    .line 95
    invoke-interface {v0, p0, p1}, Lo/api;->b(Lo/alj;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Lo/alj;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lo/apR;->e:Lo/alN;

    invoke-interface {p0, v0, v1}, Lo/alj;->fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    return-object p0
.end method

.method public static final e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0}, Lo/apR;->c(Lo/alj;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lo/apR;->c:Lo/apN;

    goto :goto_1

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lo/apQ;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lo/apQ;-><init>(Lo/alj;I)V

    sget-object p1, Lo/apR;->d:Lo/alN;

    invoke-interface {p0, v0, p1}, Lo/alj;->fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 77
    check-cast p1, Lo/api;

    .line 78
    invoke-interface {p1, p0}, Lo/api;->c(Lo/alj;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 77
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
