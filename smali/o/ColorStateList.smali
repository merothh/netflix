.class public Lo/ColorStateList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Landroid/view/animation/Interpolator;

.field e:Lo/InputStreamReader;

.field private final h:Lo/InvalidClassException;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lo/ColorStateList;->c:J

    .line 120
    new-instance v0, Lo/ColorStateList$1;

    invoke-direct {v0, p0}, Lo/ColorStateList$1;-><init>(Lo/ColorStateList;)V

    iput-object v0, p0, Lo/ColorStateList;->h:Lo/InvalidClassException;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ColorStateList;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lo/ColorStateList;->a:Z

    return-void
.end method

.method public b(J)Lo/ColorStateList;
    .locals 1

    .line 100
    iget-boolean v0, p0, Lo/ColorStateList;->a:Z

    if-nez v0, :cond_0

    .line 101
    iput-wide p1, p0, Lo/ColorStateList;->c:J

    :cond_0
    return-object p0
.end method

.method public b()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lo/ColorStateList;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lo/ColorStateList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InputStream;

    .line 94
    invoke-virtual {v1}, Lo/InputStream;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lo/ColorStateList;->a:Z

    return-void
.end method

.method public c(Landroid/view/animation/Interpolator;)Lo/ColorStateList;
    .locals 1

    .line 107
    iget-boolean v0, p0, Lo/ColorStateList;->a:Z

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lo/ColorStateList;->d:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public c(Lo/InputStreamReader;)Lo/ColorStateList;
    .locals 1

    .line 114
    iget-boolean v0, p0, Lo/ColorStateList;->a:Z

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lo/ColorStateList;->e:Lo/InputStreamReader;

    :cond_0
    return-object p0
.end method

.method public c()V
    .locals 7

    .line 68
    iget-boolean v0, p0, Lo/ColorStateList;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lo/ColorStateList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InputStream;

    .line 70
    iget-wide v2, p0, Lo/ColorStateList;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 71
    invoke-virtual {v1, v2, v3}, Lo/InputStream;->d(J)Lo/InputStream;

    .line 73
    :cond_1
    iget-object v2, p0, Lo/ColorStateList;->d:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v1, v2}, Lo/InputStream;->e(Landroid/view/animation/Interpolator;)Lo/InputStream;

    .line 76
    :cond_2
    iget-object v2, p0, Lo/ColorStateList;->e:Lo/InputStreamReader;

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lo/ColorStateList;->h:Lo/InvalidClassException;

    invoke-virtual {v1, v2}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    .line 79
    :cond_3
    invoke-virtual {v1}, Lo/InputStream;->a()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lo/ColorStateList;->a:Z

    return-void
.end method

.method public d(Lo/InputStream;Lo/InputStream;)Lo/ColorStateList;
    .locals 2

    .line 61
    iget-object v0, p0, Lo/ColorStateList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p1}, Lo/InputStream;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/InputStream;->b(J)Lo/InputStream;

    .line 63
    iget-object p1, p0, Lo/ColorStateList;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(Lo/InputStream;)Lo/ColorStateList;
    .locals 1

    .line 53
    iget-boolean v0, p0, Lo/ColorStateList;->a:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lo/ColorStateList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
