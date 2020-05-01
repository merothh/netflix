.class public Lo/SyncAdapterType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestrictionsManager;
.implements Lo/QuickViewConstants;


# instance fields
.field private a:Lo/QuickViewConstants;

.field private final b:Lo/RestrictionsManager;

.field private d:Z

.field private e:Lo/QuickViewConstants;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lo/SyncAdapterType;-><init>(Lo/RestrictionsManager;)V

    return-void
.end method

.method public constructor <init>(Lo/RestrictionsManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/SyncAdapterType;->b:Lo/RestrictionsManager;

    return-void
.end method

.method private h()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lo/SyncAdapterType;->b:Lo/RestrictionsManager;

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

.method private l()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lo/SyncAdapterType;->b:Lo/RestrictionsManager;

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

.method private n()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lo/SyncAdapterType;->b:Lo/RestrictionsManager;

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

.method private o()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lo/SyncAdapterType;->b:Lo/RestrictionsManager;

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


# virtual methods
.method public a(Lo/QuickViewConstants;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lo/SyncAdapterType;->b:Lo/RestrictionsManager;

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1, p0}, Lo/RestrictionsManager;->a(Lo/QuickViewConstants;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {p1}, Lo/QuickViewConstants;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {p1}, Lo/QuickViewConstants;->b()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lo/SyncAdapterType;->d:Z

    .line 126
    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->b()V

    .line 127
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->b()V

    return-void
.end method

.method public b(Lo/QuickViewConstants;)Z
    .locals 1

    .line 55
    invoke-direct {p0}, Lo/SyncAdapterType;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/SyncAdapterType;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lo/SyncAdapterType;->d:Z

    .line 115
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->c()V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lo/SyncAdapterType;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->c()V

    :cond_1
    return-void
.end method

.method public c(Lo/QuickViewConstants;)Z
    .locals 1

    .line 40
    invoke-direct {p0}, Lo/SyncAdapterType;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {p1}, Lo/QuickViewConstants;->e()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->d()Z

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

.method public d(Lo/QuickViewConstants;)Z
    .locals 1

    .line 60
    invoke-direct {p0}, Lo/SyncAdapterType;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lo/QuickViewConstants;Lo/QuickViewConstants;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    .line 29
    iput-object p2, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->e()Z

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

.method public e(Lo/QuickViewConstants;)Z
    .locals 3

    .line 172
    instance-of v0, p1, Lo/SyncAdapterType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 173
    check-cast p1, Lo/SyncAdapterType;

    .line 174
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    if-nez v0, :cond_0

    iget-object v0, p1, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0, v2}, Lo/QuickViewConstants;->e(Lo/QuickViewConstants;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    iget-object p1, p1, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {v0, p1}, Lo/QuickViewConstants;->e(Lo/QuickViewConstants;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public f(Lo/QuickViewConstants;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lo/SyncAdapterType;->b:Lo/RestrictionsManager;

    if-eqz p1, :cond_1

    .line 99
    invoke-interface {p1, p0}, Lo/RestrictionsManager;->f(Lo/QuickViewConstants;)V

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 73
    invoke-direct {p0}, Lo/SyncAdapterType;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/SyncAdapterType;->e()Z

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

    .line 166
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->i()V

    .line 167
    iget-object v0, p0, Lo/SyncAdapterType;->a:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->i()V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lo/SyncAdapterType;->e:Lo/QuickViewConstants;

    invoke-interface {v0}, Lo/QuickViewConstants;->j()Z

    move-result v0

    return v0
.end method
