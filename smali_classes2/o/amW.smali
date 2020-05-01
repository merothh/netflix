.class public final Lo/amW;
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
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/anb<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "TR;",
            "Ljava/util/Iterator<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final b:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field private final c:Lo/anb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/anb;Lo/alA;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/anb<",
            "+TT;>;",
            "Lo/alA<",
            "-TT;+TR;>;",
            "Lo/alA<",
            "-TR;+",
            "Ljava/util/Iterator<",
            "+TE;>;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/amW;->c:Lo/anb;

    iput-object p2, p0, Lo/amW;->b:Lo/alA;

    iput-object p3, p0, Lo/amW;->a:Lo/alA;

    return-void
.end method

.method public static final synthetic a(Lo/amW;)Lo/alA;
    .locals 0

    .line 248
    iget-object p0, p0, Lo/amW;->b:Lo/alA;

    return-object p0
.end method

.method public static final synthetic b(Lo/amW;)Lo/alA;
    .locals 0

    .line 248
    iget-object p0, p0, Lo/amW;->a:Lo/alA;

    return-object p0
.end method

.method public static final synthetic c(Lo/amW;)Lo/anb;
    .locals 0

    .line 248
    iget-object p0, p0, Lo/amW;->c:Lo/anb;

    return-object p0
.end method


# virtual methods
.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 254
    new-instance v0, Lo/amW$TaskDescription;

    invoke-direct {v0, p0}, Lo/amW$TaskDescription;-><init>(Lo/amW;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
