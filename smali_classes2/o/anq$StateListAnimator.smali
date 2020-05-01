.class public final Lo/anq$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/anq;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/amD;",
        ">;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lo/anq;

.field private c:I

.field private d:Lo/amD;

.field private e:I

.field private h:I


# direct methods
.method constructor <init>(Lo/anq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1082
    iput-object p1, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1083
    iput v0, p0, Lo/anq$StateListAnimator;->e:I

    .line 1084
    invoke-static {p1}, Lo/anq;->e(Lo/anq;)I

    move-result v0

    invoke-static {p1}, Lo/anq;->d(Lo/anq;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lo/amG;->c(III)I

    move-result p1

    iput p1, p0, Lo/anq$StateListAnimator;->a:I

    .line 1085
    iget p1, p0, Lo/anq$StateListAnimator;->a:I

    iput p1, p0, Lo/anq$StateListAnimator;->c:I

    return-void
.end method

.method private final a()V
    .locals 6

    .line 1090
    iget v0, p0, Lo/anq$StateListAnimator;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1091
    iput v1, p0, Lo/anq$StateListAnimator;->e:I

    const/4 v0, 0x0

    .line 1092
    check-cast v0, Lo/amD;

    iput-object v0, p0, Lo/anq$StateListAnimator;->d:Lo/amD;

    goto/16 :goto_1

    .line 1094
    :cond_0
    iget-object v0, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-static {v0}, Lo/anq;->b(Lo/anq;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lo/anq$StateListAnimator;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/anq$StateListAnimator;->h:I

    iget v0, p0, Lo/anq$StateListAnimator;->h:I

    iget-object v4, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-static {v4}, Lo/anq;->b(Lo/anq;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lo/anq$StateListAnimator;->c:I

    iget-object v4, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-static {v4}, Lo/anq;->d(Lo/anq;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 1095
    :cond_2
    iget v0, p0, Lo/anq$StateListAnimator;->a:I

    new-instance v1, Lo/amD;

    iget-object v4, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-static {v4}, Lo/anq;->d(Lo/anq;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lo/anv;->d(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lo/amD;-><init>(II)V

    iput-object v1, p0, Lo/anq$StateListAnimator;->d:Lo/amD;

    .line 1096
    iput v2, p0, Lo/anq$StateListAnimator;->c:I

    goto :goto_0

    .line 1098
    :cond_3
    iget-object v0, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-static {v0}, Lo/anq;->a(Lo/anq;)Lo/alN;

    move-result-object v0

    iget-object v4, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-static {v4}, Lo/anq;->d(Lo/anq;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lo/anq$StateListAnimator;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_4

    .line 1100
    iget v0, p0, Lo/anq$StateListAnimator;->a:I

    new-instance v1, Lo/amD;

    iget-object v4, p0, Lo/anq$StateListAnimator;->b:Lo/anq;

    invoke-static {v4}, Lo/anq;->d(Lo/anq;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lo/anv;->d(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lo/amD;-><init>(II)V

    iput-object v1, p0, Lo/anq$StateListAnimator;->d:Lo/amD;

    .line 1101
    iput v2, p0, Lo/anq$StateListAnimator;->c:I

    goto :goto_0

    .line 1103
    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1104
    iget v4, p0, Lo/anq$StateListAnimator;->a:I

    invoke-static {v4, v2}, Lo/amG;->b(II)Lo/amD;

    move-result-object v4

    iput-object v4, p0, Lo/anq$StateListAnimator;->d:Lo/amD;

    add-int/2addr v2, v0

    .line 1105
    iput v2, p0, Lo/anq$StateListAnimator;->a:I

    .line 1106
    iget v2, p0, Lo/anq$StateListAnimator;->a:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lo/anq$StateListAnimator;->c:I

    .line 1109
    :goto_0
    iput v3, p0, Lo/anq$StateListAnimator;->e:I

    :goto_1
    return-void
.end method


# virtual methods
.method public e()Lo/amD;
    .locals 3

    .line 1114
    iget v0, p0, Lo/anq$StateListAnimator;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1115
    invoke-direct {p0}, Lo/anq$StateListAnimator;->a()V

    .line 1116
    :cond_0
    iget v0, p0, Lo/anq$StateListAnimator;->e:I

    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, p0, Lo/anq$StateListAnimator;->d:Lo/amD;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1120
    check-cast v2, Lo/amD;

    iput-object v2, p0, Lo/anq$StateListAnimator;->d:Lo/amD;

    .line 1121
    iput v1, p0, Lo/anq$StateListAnimator;->e:I

    return-object v0

    .line 1118
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1117
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1126
    iget v0, p0, Lo/anq$StateListAnimator;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1127
    invoke-direct {p0}, Lo/anq$StateListAnimator;->a()V

    .line 1128
    :cond_0
    iget v0, p0, Lo/anq$StateListAnimator;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1082
    invoke-virtual {p0}, Lo/anq$StateListAnimator;->e()Lo/amD;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
