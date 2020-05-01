.class public final Lo/ann;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/anb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/anb<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final b:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field private final d:Lo/anb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/anb;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/anb<",
            "+TT;>;",
            "Lo/alA<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ann;->d:Lo/anb;

    iput-object p2, p0, Lo/ann;->b:Lo/alA;

    return-void
.end method

.method public static final synthetic c(Lo/ann;)Lo/anb;
    .locals 0

    .line 167
    iget-object p0, p0, Lo/ann;->d:Lo/anb;

    return-object p0
.end method

.method public static final synthetic d(Lo/ann;)Lo/alA;
    .locals 0

    .line 167
    iget-object p0, p0, Lo/ann;->b:Lo/alA;

    return-object p0
.end method


# virtual methods
.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Lo/ann$TaskDescription;

    invoke-direct {v0, p0}, Lo/ann$TaskDescription;-><init>(Lo/ann;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final d(Lo/alA;)Lo/anb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/alA<",
            "-TR;+",
            "Ljava/util/Iterator<",
            "+TE;>;>;)",
            "Lo/anb<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lo/amW;

    iget-object v1, p0, Lo/ann;->d:Lo/anb;

    iget-object v2, p0, Lo/ann;->b:Lo/alA;

    invoke-direct {v0, v1, v2, p1}, Lo/amW;-><init>(Lo/anb;Lo/alA;Lo/alA;)V

    check-cast v0, Lo/anb;

    return-object v0
.end method
