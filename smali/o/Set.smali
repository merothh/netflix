.class public Lo/Set;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Set$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/Consumer;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Lo/Consumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lo/Params;

    invoke-direct {v0}, Lo/Params;-><init>()V

    iput-object v0, p0, Lo/Set;->d:Lo/Params;

    return-void
.end method

.method static synthetic d(Lo/Set;)Lo/Params;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/Set;->d:Lo/Params;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Set;->d:Lo/Params;

    invoke-virtual {v0}, Lo/Params;->a()I

    move-result v0

    return v0
.end method

.method public b(Lo/Consumer;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lo/Set;->d:Lo/Params;

    invoke-virtual {p1}, Lo/Consumer;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lo/Params;->b(JLjava/lang/Object;)V

    return-void
.end method

.method public e(Lo/Consumer;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lo/Set;->d:Lo/Params;

    invoke-virtual {p1}, Lo/Consumer;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Params;->d(J)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/Consumer;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lo/Set$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/Set$Application;-><init>(Lo/Set;Lo/Set$3;)V

    return-object v0
.end method
