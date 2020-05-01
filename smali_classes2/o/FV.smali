.class final Lo/FV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FV$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ams<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private final e:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "TT;",
            "Lo/amT<",
            "*>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/alN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alN<",
            "-TT;-",
            "Lo/amT<",
            "*>;+TV;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FV;->e:Lo/alN;

    .line 64
    sget-object p1, Lo/FV$Application;->d:Lo/FV$Application;

    iput-object p1, p0, Lo/FV;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/amT<",
            "*>;)TV;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lo/FV;->a:Ljava/lang/Object;

    sget-object v1, Lo/FV$Application;->d:Lo/FV$Application;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lo/FV;->e:Lo/alN;

    invoke-interface {v0, p1, p2}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/FV;->a:Ljava/lang/Object;

    .line 71
    :cond_0
    iget-object p1, p0, Lo/FV;->a:Ljava/lang/Object;

    return-object p1
.end method
