.class Lo/nQ$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nQ;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lo/nQ;Landroid/os/Handler;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lo/nQ$15;->b:Lo/nQ;

    iput-object p2, p0, Lo/nQ$15;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lo/nQ$15;->b:Lo/nQ;

    invoke-virtual {v0}, Lo/nQ;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lo/nQ$15;->e:Landroid/os/Handler;

    new-instance v1, Lo/nQ$15$3;

    invoke-direct {v1, p0, p1}, Lo/nQ$15$3;-><init>(Lo/nQ$15;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
