.class Lo/apl;
.super Lo/anO;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/anO<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/alj;Z)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2}, Lo/anO;-><init>(Lo/alj;Z)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lo/apl;->a()Lo/alj;

    move-result-object v0

    invoke-static {v0, p1}, Lo/aoj;->e(Lo/alj;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
