.class Lo/nW$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->c(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/nS;Lo/nE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nS;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/nE;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic i:Lo/nW;


# direct methods
.method constructor <init>(Lo/nW;Lcom/netflix/mediaclient/android/app/Status;Lo/nE;Ljava/lang/String;Landroid/os/Handler;Lo/nS;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/nW$15;->i:Lo/nW;

    iput-object p2, p0, Lo/nW$15;->e:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/nW$15;->c:Lo/nE;

    iput-object p4, p0, Lo/nW$15;->b:Ljava/lang/String;

    iput-object p5, p0, Lo/nW$15;->d:Landroid/os/Handler;

    iput-object p6, p0, Lo/nW$15;->a:Lo/nS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 137
    iget-object v0, p0, Lo/nW$15;->i:Lo/nW;

    invoke-static {v0}, Lo/nW;->d(Lo/nW;)V

    .line 138
    iget-object v0, p0, Lo/nW$15;->i:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 139
    iget-object v0, p0, Lo/nW$15;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/nW$15;->c:Lo/nE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lo/nW$15;->i:Lo/nW;

    invoke-static {v1}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nV;

    .line 141
    iget-object v3, p0, Lo/nW$15;->b:Ljava/lang/String;

    iget-object v4, p0, Lo/nW$15;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v2, v3, v4, v0}, Lo/nV;->d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lo/nW$15;->d:Landroid/os/Handler;

    new-instance v1, Lo/nW$15$2;

    invoke-direct {v1, p0}, Lo/nW$15$2;-><init>(Lo/nW$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
