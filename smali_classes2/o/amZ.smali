.class public final Lo/amZ;
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


# instance fields
.field private final a:Z

.field private final c:Lo/anb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/anb<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/anb;ZLo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/anb<",
            "+TT;>;Z",
            "Lo/alA<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/amZ;->c:Lo/anb;

    iput-boolean p2, p0, Lo/amZ;->a:Z

    iput-object p3, p0, Lo/amZ;->d:Lo/alA;

    return-void
.end method

.method public static final synthetic a(Lo/amZ;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lo/amZ;->a:Z

    return p0
.end method

.method public static final synthetic c(Lo/amZ;)Lo/alA;
    .locals 0

    .line 119
    iget-object p0, p0, Lo/amZ;->d:Lo/alA;

    return-object p0
.end method

.method public static final synthetic d(Lo/amZ;)Lo/anb;
    .locals 0

    .line 119
    iget-object p0, p0, Lo/amZ;->c:Lo/anb;

    return-object p0
.end method


# virtual methods
.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lo/amZ$StateListAnimator;

    invoke-direct {v0, p0}, Lo/amZ$StateListAnimator;-><init>(Lo/amZ;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
