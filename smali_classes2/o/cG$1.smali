.class Lo/cG$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/cG;


# direct methods
.method constructor <init>(Lo/cG;)V
    .locals 0

    .line 1363
    iput-object p1, p0, Lo/cG$1;->c:Lo/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1372
    iget-object v0, p0, Lo/cG$1;->c:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->B()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1367
    iget-object v0, p0, Lo/cG$1;->c:Lo/cG;

    invoke-static {v0}, Lo/cG;->t(Lo/cG;)Lo/cv;

    move-result-object v0

    invoke-virtual {v0}, Lo/cv;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
