.class public Lo/BackStackRecord;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private final b:Lo/AliasActivity;

.field private c:Lo/ApplicationErrorReport;

.field public d:Z

.field private e:I

.field private f:Z

.field private g:I

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lo/ApplicationErrorReport;Lo/AppOpsManagerInternal;Lo/AliasActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p2}, Lo/AppOpsManagerInternal;->b()I

    move-result p2

    iput p2, p0, Lo/BackStackRecord;->e:I

    .line 31
    iput-object p3, p0, Lo/BackStackRecord;->b:Lo/AliasActivity;

    .line 32
    iput-object p1, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 68
    iget v0, p0, Lo/BackStackRecord;->g:I

    iget v1, p0, Lo/BackStackRecord;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lo/BackStackRecord;->a:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 69
    iget-object p1, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    invoke-interface {p1}, Lo/ApplicationErrorReport;->a()V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lo/BackStackRecord;->h:Z

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    iget v1, p0, Lo/BackStackRecord;->j:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lo/ApplicationErrorReport;->b(I)V

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lo/BackStackRecord;->h:Z

    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 2

    .line 78
    iget v0, p0, Lo/BackStackRecord;->i:I

    if-le p1, v0, :cond_0

    .line 79
    iget-object v1, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lo/ApplicationErrorReport;->e(I)V

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lo/BackStackRecord;->f:Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    invoke-interface {p1}, Lo/ApplicationErrorReport;->b()V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lo/BackStackRecord;->f:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 58
    iput p1, p0, Lo/BackStackRecord;->i:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 48
    iput p1, p0, Lo/BackStackRecord;->a:I

    .line 49
    iput p2, p0, Lo/BackStackRecord;->g:I

    .line 50
    iget p1, p0, Lo/BackStackRecord;->e:I

    sub-int p2, p1, p2

    iget v0, p0, Lo/BackStackRecord;->a:I

    sub-int/2addr p2, v0

    iput p2, p0, Lo/BackStackRecord;->j:I

    .line 51
    iget p2, p0, Lo/BackStackRecord;->g:I

    sub-int/2addr p1, v0

    if-le p2, p1, :cond_0

    .line 52
    iget-object p1, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    iget p2, p0, Lo/BackStackRecord;->j:I

    invoke-interface {p1, p2}, Lo/ApplicationErrorReport;->b(I)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lo/BackStackRecord;->h:Z

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 36
    iget-object v0, p0, Lo/BackStackRecord;->b:Lo/AliasActivity;

    invoke-interface {v0, p1}, Lo/AliasActivity;->c(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    invoke-interface {v0, p1}, Lo/ApplicationErrorReport;->c(I)V

    .line 40
    :cond_0
    iget-object p1, p0, Lo/BackStackRecord;->b:Lo/AliasActivity;

    invoke-interface {p1, p2}, Lo/AliasActivity;->c(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    iget-object p2, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    invoke-interface {p2, p1}, Lo/ApplicationErrorReport;->a(I)V

    .line 44
    :cond_1
    iget-object p1, p0, Lo/BackStackRecord;->b:Lo/AliasActivity;

    invoke-interface {p1}, Lo/AliasActivity;->c()V

    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lo/BackStackRecord;->d:Z

    .line 63
    invoke-direct {p0, p1}, Lo/BackStackRecord;->b(I)V

    .line 64
    invoke-direct {p0, p1}, Lo/BackStackRecord;->e(I)V

    return-void
.end method

.method public d(II)V
    .locals 3

    .line 96
    iget-boolean v0, p0, Lo/BackStackRecord;->d:Z

    if-eqz v0, :cond_1

    .line 97
    iget v0, p0, Lo/BackStackRecord;->e:I

    sub-int v1, v0, p1

    iget v2, p0, Lo/BackStackRecord;->a:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo/BackStackRecord;->j:I

    .line 98
    iput p1, p0, Lo/BackStackRecord;->g:I

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_0

    .line 100
    iget-object p1, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    iget p2, p0, Lo/BackStackRecord;->j:I

    invoke-interface {p1, p2}, Lo/ApplicationErrorReport;->b(I)V

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lo/BackStackRecord;->h:Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lo/BackStackRecord;->c:Lo/ApplicationErrorReport;

    invoke-interface {p1}, Lo/ApplicationErrorReport;->a()V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lo/BackStackRecord;->h:Z

    goto :goto_0

    .line 107
    :cond_1
    iget p2, p0, Lo/BackStackRecord;->a:I

    invoke-virtual {p0, p2, p1}, Lo/BackStackRecord;->a(II)V

    :goto_0
    return-void
.end method
