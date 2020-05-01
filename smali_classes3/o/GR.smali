.class public abstract Lo/GR;
.super Lo/IntBinaryOperator;
.source ""

# interfaces
.implements Lo/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GR$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/TimeUnit;",
        ">",
        "Lo/IntBinaryOperator<",
        "TT;>;",
        "Lo/GX;"
    }
.end annotation


# static fields
.field public static final b:Lo/GR$ActionBar;


# instance fields
.field public a:Lo/UpdateEngine;

.field public c:Lo/GW;

.field private f:I

.field private g:Ljava/lang/Integer;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GR$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GR$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/GR;->b:Lo/GR$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/TimeUnit;Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previouslyBoundModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object v0, p0

    check-cast v0, Lo/GR;

    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object p1, Lo/GR;->b:Lo/GR$ActionBar;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lo/IntBinaryOperator;->a(Lo/TimeUnit;Lo/BiConsumer;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/GR;->g:Ljava/lang/Integer;

    return-void
.end method

.method protected final b(Ljava/lang/Long;)V
    .locals 5

    const-string v0, "-PresentationSessionId"

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lo/GR;->m()Lo/GW;

    move-result-object v1

    invoke-virtual {v1}, Lo/GW;->g()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/GR;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lo/GR;->m()Lo/GW;

    move-result-object p1

    invoke-virtual {p1}, Lo/GW;->g()Ljava/util/Map;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/GR;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public b(Lo/GW;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lo/GR;->c:Lo/GW;

    return-void
.end method

.method public b(Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lo/GR;->a:Lo/UpdateEngine;

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 54
    iput p1, p0, Lo/GR;->f:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 82
    iput p1, p0, Lo/GR;->i:I

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 21
    check-cast p1, Lo/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lo/GR;->a(Lo/TimeUnit;Lo/BiConsumer;)V

    return-void
.end method

.method public h()Lo/UpdateEngine;
    .locals 2

    .line 76
    iget-object v0, p0, Lo/GR;->a:Lo/UpdateEngine;

    if-nez v0, :cond_0

    const-string v1, "eventBusFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public k()I
    .locals 2

    .line 66
    invoke-virtual {p0}, Lo/GR;->o()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()I
    .locals 1

    .line 54
    iget v0, p0, Lo/GR;->f:I

    return v0
.end method

.method public m()Lo/GW;
    .locals 2

    .line 71
    iget-object v0, p0, Lo/GR;->c:Lo/GW;

    if-nez v0, :cond_0

    const-string v1, "itemDefinition"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/GR;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final s()Ljava/lang/Long;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lo/GR;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->g()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/GR;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-PresentationSessionId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 82
    iget v0, p0, Lo/GR;->i:I

    return v0
.end method
