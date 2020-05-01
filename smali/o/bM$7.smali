.class Lo/bM$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bM;->u()Lo/Ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/bM;


# direct methods
.method constructor <init>(Lo/bM;)V
    .locals 0

    .line 1465
    iput-object p1, p0, Lo/bM$7;->e:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1473
    iget-object v0, p0, Lo/bM$7;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->t(Lo/bM;)Lo/cG;

    move-result-object v0

    invoke-virtual {v0}, Lo/cG;->aF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1468
    iget-object v0, p0, Lo/bM$7;->e:Lo/bM;

    invoke-static {v0}, Lo/bM;->t(Lo/bM;)Lo/cG;

    move-result-object v0

    invoke-virtual {v0}, Lo/cG;->aE()J

    move-result-wide v0

    return-wide v0
.end method
