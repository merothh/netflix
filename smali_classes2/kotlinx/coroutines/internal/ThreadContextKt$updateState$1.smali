.class public final Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/apR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/apQ;",
        "Lo/alj$StateListAnimator;",
        "Lo/apQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->a:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/apQ;Lo/alj$StateListAnimator;)Lo/apQ;
    .locals 1

    .line 44
    instance-of v0, p2, Lo/api;

    if-eqz v0, :cond_0

    .line 45
    check-cast p2, Lo/api;

    invoke-virtual {p1}, Lo/apQ;->e()Lo/alj;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/api;->c(Lo/alj;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/apQ;->b(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo/apQ;

    check-cast p2, Lo/alj$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->a(Lo/apQ;Lo/alj$StateListAnimator;)Lo/apQ;

    move-result-object p1

    return-object p1
.end method
