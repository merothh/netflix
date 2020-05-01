.class public final Lo/HV$StateListAnimator;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Lo/UpdateEngine;

.field public d:Lo/Ia$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "eventBusFactory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    iput-object p1, p0, Lo/HV$StateListAnimator;->a:Lo/UpdateEngine;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 207
    iget-object v0, p0, Lo/HV$StateListAnimator;->d:Lo/Ia$StateListAnimator;

    if-nez v0, :cond_0

    const-string v1, "playerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Ia$StateListAnimator;->a()V

    return-void
.end method

.method public final b(Lo/GK;Lo/HY;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GK;",
            "Lo/HY;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extrasFeedViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playableViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lo/HV$StateListAnimator;->d:Lo/Ia$StateListAnimator;

    if-nez v0, :cond_0

    const-string v1, "playerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {p2}, Lo/HY;->M()I

    move-result v1

    .line 199
    invoke-virtual {v0, p1, v1, p2, p3}, Lo/Ia$StateListAnimator;->c(Lo/GK;ILo/HY;Ljava/util/List;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lo/HV$StateListAnimator;->d:Lo/Ia$StateListAnimator;

    if-nez v0, :cond_0

    const-string v1, "playerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Ia$StateListAnimator;->e()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    .line 213
    iget-object v0, p0, Lo/HV$StateListAnimator;->d:Lo/Ia$StateListAnimator;

    if-nez v0, :cond_0

    const-string v1, "playerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Ia$StateListAnimator;->c()V

    return-void
.end method

.method public final d()Lo/Ia$StateListAnimator;
    .locals 2

    .line 188
    iget-object v0, p0, Lo/HV$StateListAnimator;->d:Lo/Ia$StateListAnimator;

    if-nez v0, :cond_0

    const-string v1, "playerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lo/Ia$StateListAnimator;

    iget-object v1, p0, Lo/HV$StateListAnimator;->a:Lo/UpdateEngine;

    invoke-direct {v0, p1, v1}, Lo/Ia$StateListAnimator;-><init>(Landroid/view/View;Lo/UpdateEngine;)V

    iput-object v0, p0, Lo/HV$StateListAnimator;->d:Lo/Ia$StateListAnimator;

    return-void
.end method

.method public final e()V
    .locals 2

    .line 211
    iget-object v0, p0, Lo/HV$StateListAnimator;->d:Lo/Ia$StateListAnimator;

    if-nez v0, :cond_0

    const-string v1, "playerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Ia$StateListAnimator;->b()V

    return-void
.end method
