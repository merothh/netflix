.class public final Lo/RapporEncoder$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RapporEncoder;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field private c:Lo/RapporEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RapporEncoder<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lo/RapporEncoder;


# direct methods
.method constructor <init>(Lo/RapporEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lo/RapporEncoder$Application;->e:Lo/RapporEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/RapporEncoder$Application;->c:Lo/RapporEncoder;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lo/RapporEncoder$Application;->c:Lo/RapporEncoder;

    instance-of v0, v0, Lo/DifferentialPrivacyEncoder;

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/RapporEncoder$Application;->c:Lo/RapporEncoder;

    .line 47
    instance-of v1, v0, Lo/DifferentialPrivacyEncoder;

    if-eqz v1, :cond_0

    .line 48
    check-cast v0, Lo/DifferentialPrivacyEncoder;

    invoke-virtual {v0}, Lo/DifferentialPrivacyEncoder;->e()Lo/RapporEncoder;

    move-result-object v1

    iput-object v1, p0, Lo/RapporEncoder$Application;->c:Lo/RapporEncoder;

    .line 49
    invoke-virtual {v0}, Lo/DifferentialPrivacyEncoder;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
