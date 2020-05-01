.class public abstract Lo/RapporEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/anb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/anb<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/RapporEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 9
    instance-of v0, p0, Lo/DifferentialPrivacyEncoder;

    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    check-cast v0, Lo/DifferentialPrivacyEncoder;

    invoke-virtual {v0}, Lo/DifferentialPrivacyEncoder;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final c()Lo/RapporEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/RapporEncoder<",
            "TT;>;"
        }
    .end annotation

    .line 17
    instance-of v0, p0, Lo/DifferentialPrivacyEncoder;

    if-eqz v0, :cond_0

    .line 18
    move-object v0, p0

    check-cast v0, Lo/DifferentialPrivacyEncoder;

    invoke-virtual {v0}, Lo/DifferentialPrivacyEncoder;->e()Lo/RapporEncoder;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lo/PrintDocument;->c:Lo/PrintDocument;

    check-cast v0, Lo/RapporEncoder;

    :goto_0
    return-object v0
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

    .line 39
    new-instance v0, Lo/RapporEncoder$Application;

    invoke-direct {v0, p0}, Lo/RapporEncoder$Application;-><init>(Lo/RapporEncoder;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 32
    instance-of v0, p0, Lo/PrintDocument;

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/RapporEncoder;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
