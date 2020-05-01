.class Lo/nW$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->a(Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nW;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/nW;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/nW$5;->a:Lo/nW;

    iput-object p2, p0, Lo/nW$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 44
    iget-object v0, p0, Lo/nW$5;->a:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 45
    iget-object v0, p0, Lo/nW$5;->a:Lo/nW;

    invoke-static {v0}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nV;

    .line 46
    iget-object v2, p0, Lo/nW$5;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/nV;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
