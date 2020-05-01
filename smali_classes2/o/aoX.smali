.class public abstract Lo/aoX;
.super Lo/aog;
.source ""

# interfaces
.implements Lo/aoA;
.implements Lo/aoO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lo/aoU;",
        ">",
        "Lo/aog;",
        "Lo/aoA;",
        "Lo/aoO;"
    }
.end annotation


# instance fields
.field public final b:Lo/aoU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/aoU;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1349
    invoke-direct {p0}, Lo/aog;-><init>()V

    iput-object p1, p0, Lo/aoX;->b:Lo/aoU;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1352
    iget-object v0, p0, Lo/aoX;->b:Lo/aoU;

    if-eqz v0, :cond_0

    check-cast v0, Lo/apb;

    invoke-virtual {v0, p0}, Lo/apb;->a(Lo/aoX;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public au_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Lo/ape;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
