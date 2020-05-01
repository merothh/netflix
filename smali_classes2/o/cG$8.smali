.class Lo/cG$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/cG;


# direct methods
.method constructor <init>(Lo/cG;)V
    .locals 0

    .line 1320
    iput-object p1, p0, Lo/cG$8;->e:Lo/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1329
    iget-object v0, p0, Lo/cG$8;->e:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->h()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1334
    iget-object v0, p0, Lo/cG$8;->e:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->A()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1339
    iget-object v0, p0, Lo/cG$8;->e:Lo/cG;

    invoke-static {v0}, Lo/cG;->t(Lo/cG;)Lo/cv;

    move-result-object v0

    invoke-virtual {v0}, Lo/cv;->d()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1349
    iget-object v0, p0, Lo/cG$8;->e:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->f()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1324
    iget-object v0, p0, Lo/cG$8;->e:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->z()Z

    move-result v0

    return v0
.end method

.method public g()Lorg/json/JSONArray;
    .locals 1

    .line 1359
    iget-object v0, p0, Lo/cG$8;->e:Lo/cG;

    invoke-static {v0}, Lo/cG;->t(Lo/cG;)Lo/cv;

    move-result-object v0

    invoke-virtual {v0}, Lo/cv;->b()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1354
    iget-object v0, p0, Lo/cG$8;->e:Lo/cG;

    invoke-static {v0}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v0

    invoke-virtual {v0}, Lo/cH;->m()Z

    move-result v0

    return v0
.end method
