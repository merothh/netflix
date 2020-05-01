.class public final Lo/Nf$ActionBar;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Nf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field public c:Lo/Nl;

.field private final d:Lo/UpdateEngine;


# direct methods
.method public constructor <init>(Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "eventBusFactory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    iput-object p1, p0, Lo/Nf$ActionBar;->d:Lo/UpdateEngine;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 184
    iget-object v0, p0, Lo/Nf$ActionBar;->c:Lo/Nl;

    if-nez v0, :cond_0

    const-string v1, "miniPlayerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Nl;->a()V

    return-void
.end method

.method public final a(Lo/UE;Lo/Nh;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UE;",
            "Lo/Nh;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playablesFeedViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miniPlayerViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lo/Nf$ActionBar;->c:Lo/Nl;

    if-nez v0, :cond_0

    const-string v1, "miniPlayerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-virtual {p2}, Lo/Nh;->f()I

    move-result v1

    .line 176
    invoke-virtual {v0, p1, v1, p2, p3}, Lo/Nl;->e(Lo/UE;ILo/Nh;Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 188
    iget-object v0, p0, Lo/Nf$ActionBar;->c:Lo/Nl;

    if-nez v0, :cond_0

    const-string v1, "miniPlayerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Nl;->c()V

    return-void
.end method

.method public final c()Lo/Nl;
    .locals 2

    .line 162
    iget-object v0, p0, Lo/Nf$ActionBar;->c:Lo/Nl;

    if-nez v0, :cond_0

    const-string v1, "miniPlayerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lo/Nl;

    .line 167
    iget-object v1, p0, Lo/Nf$ActionBar;->d:Lo/UpdateEngine;

    .line 165
    invoke-direct {v0, p1, v1}, Lo/Nl;-><init>(Landroid/view/View;Lo/UpdateEngine;)V

    iput-object v0, p0, Lo/Nf$ActionBar;->c:Lo/Nl;

    return-void
.end method

.method public final d()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lo/Nf$ActionBar;->c:Lo/Nl;

    if-nez v0, :cond_0

    const-string v1, "miniPlayerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Nl;->j()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    .line 190
    iget-object v0, p0, Lo/Nf$ActionBar;->c:Lo/Nl;

    if-nez v0, :cond_0

    const-string v1, "miniPlayerViewHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/Nl;->e()V

    return-void
.end method
