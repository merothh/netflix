.class public final Lo/apE;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lo/apN;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apE;->b:Ljava/lang/Object;

    .line 25
    new-instance v0, Lo/apN;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/apE;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final b()Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object v0, Lo/apE;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static final d(Ljava/lang/Object;)Lo/apD;
    .locals 1

    .line 617
    instance-of v0, p0, Lo/apI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lo/apI;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/apI;->a:Lo/apD;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    move-object v0, p0

    check-cast v0, Lo/apD;

    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
