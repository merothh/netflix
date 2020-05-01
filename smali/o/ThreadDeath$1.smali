.class Lo/ThreadDeath$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ThreadDeath;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic e:Lo/ThreadDeath;


# direct methods
.method constructor <init>(Lo/ThreadDeath;Ljava/util/ArrayList;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/ThreadDeath$1;->e:Lo/ThreadDeath;

    iput-object p2, p0, Lo/ThreadDeath$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 171
    iget-object v0, p0, Lo/ThreadDeath$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    .line 172
    iget-object v2, p0, Lo/ThreadDeath$1;->e:Lo/ThreadDeath;

    invoke-virtual {v2, v1}, Lo/ThreadDeath;->c(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lo/ThreadDeath$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Lo/ThreadDeath$1;->e:Lo/ThreadDeath;

    iget-object v0, v0, Lo/ThreadDeath;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ThreadDeath$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
