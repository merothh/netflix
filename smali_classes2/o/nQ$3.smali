.class Lo/nQ$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;)V
    .locals 0

    .line 1453
    iput-object p1, p0, Lo/nQ$3;->a:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1456
    iget-object v0, p0, Lo/nQ$3;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->j(Lo/nQ;)Lo/nL;

    move-result-object v0

    invoke-interface {v0}, Lo/nL;->c()V

    return-void
.end method
