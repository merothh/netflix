.class public final Lo/ank;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ana;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ana<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final d:Lo/anb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/anb;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/anb<",
            "+TT;>;I)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ank;->d:Lo/anb;

    iput p2, p0, Lo/ank;->a:I

    .line 356
    iget p1, p0, Lo/ank;->a:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "count must be non-negative, but was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/ank;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public static final synthetic c(Lo/ank;)Lo/anb;
    .locals 0

    .line 350
    iget-object p0, p0, Lo/ank;->d:Lo/anb;

    return-object p0
.end method

.method public static final synthetic e(Lo/ank;)I
    .locals 0

    .line 350
    iget p0, p0, Lo/ank;->a:I

    return p0
.end method


# virtual methods
.method public c(I)Lo/anb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation

    .line 360
    iget v0, p0, Lo/ank;->a:I

    if-lt p1, v0, :cond_0

    move-object p1, p0

    check-cast p1, Lo/anb;

    goto :goto_0

    :cond_0
    new-instance v0, Lo/ank;

    iget-object v1, p0, Lo/ank;->d:Lo/anb;

    invoke-direct {v0, v1, p1}, Lo/ank;-><init>(Lo/anb;I)V

    move-object p1, v0

    check-cast p1, Lo/anb;

    :goto_0
    return-object p1
.end method

.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Lo/ank$StateListAnimator;

    invoke-direct {v0, p0}, Lo/ank$StateListAnimator;-><init>(Lo/ank;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
