.class Lo/hY$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lo/hY$14;->e:Lo/hY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 985
    invoke-static {}, Lo/fl;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 986
    invoke-static {}, Lo/eV;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 989
    :cond_0
    iget-object v0, p0, Lo/hY$14;->e:Lo/hY;

    invoke-static {v0}, Lo/hY;->d(Lo/hY;)Lo/FontRequest;

    move-result-object v0

    .line 990
    invoke-static {}, Lo/dO;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 991
    invoke-static {}, Lo/dZ;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 992
    invoke-static {}, Lo/fl;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 989
    :goto_1
    invoke-virtual {v0, v1}, Lo/FontRequest;->d(Z)V

    goto :goto_3

    .line 987
    :cond_3
    :goto_2
    iget-object v0, p0, Lo/hY$14;->e:Lo/hY;

    invoke-static {v0}, Lo/hY;->d(Lo/hY;)Lo/FontRequest;

    move-result-object v0

    invoke-virtual {v0}, Lo/FontRequest;->o()V

    :goto_3
    return-void
.end method
