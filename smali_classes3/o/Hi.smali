.class public abstract Lo/Hi;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Hi$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/Hi$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Ljava/lang/Integer;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/HK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/GR;-><init>()V

    .line 27
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Hi;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 22
    sget v0, Lo/GS$FragmentManager;->e:I

    return v0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lo/GR;->b(Ljava/lang/Integer;)V

    .line 55
    iget-object v0, p0, Lo/Hi;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/HK;

    .line 56
    invoke-virtual {v1, p1}, Lo/HK;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lo/GW;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1}, Lo/GR;->b(Lo/GW;)V

    .line 37
    iget-object v0, p0, Lo/Hi;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 97
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/HK;

    .line 38
    invoke-virtual {v1, p1}, Lo/HK;->b(Lo/GW;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lo/UpdateEngine;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Lo/GR;->b(Lo/UpdateEngine;)V

    .line 46
    iget-object v0, p0, Lo/Hi;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/HK;

    .line 47
    invoke-virtual {v1, p1}, Lo/HK;->b(Lo/UpdateEngine;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Hi;->e(Lo/Hi$TaskDescription;)V

    return-void
.end method

.method public final d(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/Hi;->f:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Hi$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Hi;->e(Lo/Hi$TaskDescription;)V

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/HK;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lo/Hi;->h:Ljava/util/List;

    return-void
.end method

.method public e(Lo/Hi$TaskDescription;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lo/Hi$TaskDescription;->d()Lcom/airbnb/epoxy/Carousel;

    move-result-object v0

    iget-object v1, p0, Lo/Hi;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/Carousel;->setModels(Ljava/util/List;)V

    .line 63
    invoke-virtual {p1}, Lo/Hi$TaskDescription;->a()Lo/SelectionActionModeHelper;

    move-result-object p1

    iget-object v0, p0, Lo/Hi;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Lo/SelectionActionModeHelper;->d(I)V

    return-void
.end method

.method public h()Lo/UpdateEngine;
    .locals 1

    .line 43
    invoke-super {p0}, Lo/GR;->h()Lo/UpdateEngine;

    move-result-object v0

    return-object v0
.end method

.method public m()Lo/GW;
    .locals 1

    .line 34
    invoke-super {p0}, Lo/GR;->m()Lo/GW;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Hi;->r()Lo/Hi$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1

    .line 52
    invoke-super {p0}, Lo/GR;->o()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/Hi;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/HK;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/Hi;->h:Ljava/util/List;

    return-object v0
.end method

.method protected r()Lo/Hi$TaskDescription;
    .locals 1

    .line 24
    new-instance v0, Lo/Hi$TaskDescription;

    invoke-direct {v0}, Lo/Hi$TaskDescription;-><init>()V

    return-object v0
.end method
