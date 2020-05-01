.class Lo/nW$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->d(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lo/nW;


# direct methods
.method constructor <init>(Lo/nW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lo/nW$11;->e:Lo/nW;

    iput-object p2, p0, Lo/nW$11;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lo/nW$11;->e:Lo/nW;

    invoke-static {v0}, Lo/nW;->d(Lo/nW;)V

    .line 185
    iget-object v0, p0, Lo/nW$11;->e:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 186
    iget-object v0, p0, Lo/nW$11;->e:Lo/nW;

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

    .line 187
    iget-object v2, p0, Lo/nW$11;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v1, v2}, Lo/nV;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_0
    return-void
.end method
