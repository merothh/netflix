.class public final Lkotlinx/coroutines/DeferredCoroutine$await$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aox;->c(Lo/ale;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/aox;

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/aox;Lo/ale;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->a:Lo/aox;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lo/ale;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->b:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->c:I

    iget-object p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->a:Lo/aox;

    invoke-static {p1, p0}, Lo/aox;->d(Lo/aox;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
