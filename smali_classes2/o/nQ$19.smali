.class Lo/nQ$19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;Z)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lo/nQ$19;->e:Lo/nQ;

    iput-boolean p2, p0, Lo/nQ$19;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1011
    iget-object v0, p0, Lo/nQ$19;->e:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->b(Lo/nQ;)Lo/nI;

    move-result-object v0

    iget-boolean v1, p0, Lo/nQ$19;->d:Z

    invoke-virtual {v0, v1}, Lo/nI;->a(Z)V

    return-void
.end method
