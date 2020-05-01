.class public final Lo/OperationApplicationException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestrictionsManager;
.implements Lo/QuickViewConstants;


# instance fields
.field private final b:Lo/RestrictionsManager;

.field private d:Lo/QuickViewConstants;

.field private e:Lo/QuickViewConstants;


# direct methods
.method public constructor <init>(Lo/RestrictionsManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/OperationApplicationException;->b:Lo/RestrictionsManager;

    return-void
.end method

.method private h()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lo/OperationApplicationException;->b:Lo/RestrictionsManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lo/RestrictionsManager;->c(Lo/QuickViewConstants;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private j(Lo/QuickViewConstants;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private k()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lo/OperationApplicationException;->b:Lo/RestrictionsManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lo/RestrictionsManager;->d(Lo/QuickViewConstants;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private m()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lo/OperationApplicationException;->b:Lo/RestrictionsManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lo/RestrictionsManager;->b(Lo/QuickViewConstants;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private o()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lo/OperationApplicationException;->b:Lo/RestrictionsManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/RestrictionsManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lo/QuickViewConstants;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lo/OperationApplicationException;->b:Lo/RestrictionsManager;

    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1, p0}, Lo/RestrictionsManager;->a(Lo/QuickViewConstants;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    :goto_0
    invoke-interface {v0}, Lo/QuickViewConstants;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->b()V

    .line 38
    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->b()V

    :cond_0
    return-void
.end method

.method public b(Lo/QuickViewConstants;)Z
    .locals 1

    .line 94
    invoke-direct {p0}, Lo/OperationApplicationException;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/OperationApplicationException;->j(Lo/QuickViewConstants;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 1

    .line 28
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->c()V

    :cond_0
    return-void
.end method

.method public c(Lo/QuickViewConstants;)Z
    .locals 1

    .line 85
    invoke-direct {p0}, Lo/OperationApplicationException;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/OperationApplicationException;->j(Lo/QuickViewConstants;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lo/QuickViewConstants;Lo/QuickViewConstants;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    .line 23
    iput-object p2, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    :goto_0
    invoke-interface {v0}, Lo/QuickViewConstants;->d()Z

    move-result v0

    return v0
.end method

.method public d(Lo/QuickViewConstants;)Z
    .locals 1

    .line 99
    invoke-direct {p0}, Lo/OperationApplicationException;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/OperationApplicationException;->j(Lo/QuickViewConstants;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    :goto_0
    invoke-interface {v0}, Lo/QuickViewConstants;->e()Z

    move-result v0

    return v0
.end method

.method public e(Lo/QuickViewConstants;)Z
    .locals 3

    .line 76
    instance-of v0, p1, Lo/OperationApplicationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lo/OperationApplicationException;

    .line 78
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    iget-object v2, p1, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0, v2}, Lo/QuickViewConstants;->e(Lo/QuickViewConstants;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    iget-object p1, p1, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-interface {v0, p1}, Lo/QuickViewConstants;->e(Lo/QuickViewConstants;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(Lo/QuickViewConstants;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 133
    iget-object p1, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-interface {p1}, Lo/QuickViewConstants;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-interface {p1}, Lo/QuickViewConstants;->c()V

    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object p1, p0, Lo/OperationApplicationException;->b:Lo/RestrictionsManager;

    if-eqz p1, :cond_2

    .line 140
    invoke-interface {p1, p0}, Lo/RestrictionsManager;->f(Lo/QuickViewConstants;)V

    :cond_2
    return-void
.end method

.method public f()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 116
    invoke-direct {p0}, Lo/OperationApplicationException;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/OperationApplicationException;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->i()V

    .line 71
    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->i()V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OperationApplicationException;->d:Lo/QuickViewConstants;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/OperationApplicationException;->e:Lo/QuickViewConstants;

    :goto_0
    invoke-interface {v0}, Lo/QuickViewConstants;->j()Z

    move-result v0

    return v0
.end method
