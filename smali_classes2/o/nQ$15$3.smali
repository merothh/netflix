.class Lo/nQ$15$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ$15;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic e:Lo/nQ$15;


# direct methods
.method constructor <init>(Lo/nQ$15;Ljava/util/Map;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lo/nQ$15$3;->e:Lo/nQ$15;

    iput-object p2, p0, Lo/nQ$15$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 369
    iget-object v0, p0, Lo/nQ$15$3;->e:Lo/nQ$15;

    iget-object v0, v0, Lo/nQ$15;->b:Lo/nQ;

    iget-object v1, p0, Lo/nQ$15$3;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/nQ;->d(Lo/nQ;Ljava/util/Map;)V

    return-void
.end method
