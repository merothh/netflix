.class Lo/jS$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/jS;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/jS;


# direct methods
.method constructor <init>(Lo/jS;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lo/jS$5;->c:Lo/jS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lo/jS$5;->c:Lo/jS;

    invoke-static {v0}, Lo/jS;->d(Lo/jS;)Lo/nS;

    move-result-object v0

    iget-object v1, p0, Lo/jS$5;->c:Lo/jS;

    invoke-static {v1}, Lo/jS;->c(Lo/jS;)Lo/jZ;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/nS;->e(Lo/nV;)V

    return-void
.end method
