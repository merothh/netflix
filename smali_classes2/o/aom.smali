.class public final Lo/aom;
.super Lo/alc;
.source ""

# interfaces
.implements Lo/api;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aom$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/alc;",
        "Lo/api<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/aom$ActionBar;


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aom$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aom$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/aom;->b:Lo/aom$ActionBar;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 62
    sget-object v0, Lo/aom;->b:Lo/aom$ActionBar;

    check-cast v0, Lo/alj$Application;

    invoke-direct {p0, v0}, Lo/alc;-><init>(Lo/alj$Application;)V

    iput-wide p1, p0, Lo/aom;->a:J

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lo/aom;->a:J

    return-wide v0
.end method

.method public synthetic b(Lo/alj;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo/aom;->e(Lo/alj;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lo/alj;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lo/aom;->e(Lo/alj;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/alj;)Ljava/lang/String;
    .locals 8

    .line 67
    sget-object v0, Lo/aol;->b:Lo/aol$ActionBar;

    check-cast v0, Lo/alj$Application;

    invoke-interface {p1, v0}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p1

    check-cast p1, Lo/aol;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/aol;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "coroutine"

    .line 68
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, " @"

    invoke-static/range {v2 .. v7}, Lo/anv;->d(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @"

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-wide v2, p0, Lo/aom;->a:J

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v1

    .line 73
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lo/alj;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/aom;

    if-eqz v0, :cond_0

    check-cast p1, Lo/aom;

    iget-wide v0, p0, Lo/aom;->a:J

    iget-wide v2, p1, Lo/aom;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/alj$StateListAnimator;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2}, Lo/api$Activity;->d(Lo/api;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Lo/api$Activity;->a(Lo/api;Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lo/aom;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public minusKey(Lo/alj$Application;)Lo/alj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Lo/api$Activity;->b(Lo/api;Lo/alj$Application;)Lo/alj;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lo/alj;)Lo/alj;
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lo/api$Activity;->b(Lo/api;Lo/alj;)Lo/alj;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/aom;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
