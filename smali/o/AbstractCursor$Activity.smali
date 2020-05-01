.class Lo/AbstractCursor$Activity;
.super Lcom/facebook/datasource/AbstractDataSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AbstractCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbstractCursor$Activity$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lo/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field private d:Lo/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lo/AbstractCursor;


# direct methods
.method public constructor <init>(Lo/AbstractCursor;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lo/AbstractCursor$Activity;->e:Lo/AbstractCursor;

    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lo/AbstractCursor$Activity;->b:I

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lo/AbstractCursor$Activity;->d:Lo/XmlResourceParser;

    .line 74
    iput-object p1, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;

    .line 77
    invoke-direct {p0}, Lo/AbstractCursor$Activity;->l()Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No data source supplier or supplier returned null."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo/AbstractCursor$Activity;->e(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method private a(Lo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1}, Lo/AbstractCursor$Activity;->d(Lo/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lo/AbstractCursor$Activity;->n()Lo/XmlResourceParser;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lo/AbstractCursor$Activity;->c(Lo/XmlResourceParser;)V

    .line 184
    :cond_1
    invoke-direct {p0}, Lo/AbstractCursor$Activity;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-interface {p1}, Lo/XmlResourceParser;->j()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AbstractCursor$Activity;->e(Ljava/lang/Throwable;)Z

    :cond_2
    return-void
.end method

.method private a(Lo/XmlResourceParser;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lo/AbstractCursor$Activity;->d:Lo/XmlResourceParser;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 169
    :cond_0
    iget-object v0, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 170
    :cond_2
    :goto_0
    iget-object p2, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;

    .line 171
    iput-object p1, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;

    move-object p1, p2

    .line 173
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-direct {p0, p1}, Lo/AbstractCursor$Activity;->c(Lo/XmlResourceParser;)V

    return-void

    .line 162
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lo/AbstractCursor$Activity;Lo/XmlResourceParser;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lo/AbstractCursor$Activity;->b(Lo/XmlResourceParser;)V

    return-void
.end method

.method private b(Lo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 190
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lo/AbstractCursor$Activity;->a(Lo/XmlResourceParser;Z)V

    .line 193
    invoke-direct {p0}, Lo/AbstractCursor$Activity;->n()Lo/XmlResourceParser;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 194
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lo/AbstractCursor$Activity;->c(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method private c(Lo/XmlResourceParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 200
    invoke-interface {p1}, Lo/XmlResourceParser;->g()Z

    :cond_0
    return-void
.end method

.method private declared-synchronized d(Lo/XmlResourceParser;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lo/AbstractCursor$Activity;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/AbstractCursor$Activity;->d:Lo/XmlResourceParser;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lo/AbstractCursor$Activity;->d:Lo/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 148
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 145
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic e(Lo/AbstractCursor$Activity;Lo/XmlResourceParser;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lo/AbstractCursor$Activity;->a(Lo/XmlResourceParser;)V

    return-void
.end method

.method private declared-synchronized e(Lo/XmlResourceParser;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lo/AbstractCursor$Activity;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 137
    monitor-exit p0

    return p1

    .line 139
    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/AbstractCursor$Activity;->d:Lo/XmlResourceParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 140
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized k()Lo/UserInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lo/AbstractCursor$Activity;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lo/AbstractCursor$Activity;->b:I

    iget-object v1, p0, Lo/AbstractCursor$Activity;->e:Lo/AbstractCursor;

    invoke-static {v1}, Lo/AbstractCursor;->b(Lo/AbstractCursor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lo/AbstractCursor$Activity;->e:Lo/AbstractCursor;

    invoke-static {v0}, Lo/AbstractCursor;->b(Lo/AbstractCursor;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lo/AbstractCursor$Activity;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/AbstractCursor$Activity;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 132
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()Z
    .locals 3

    .line 116
    invoke-direct {p0}, Lo/AbstractCursor$Activity;->k()Lo/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/XmlResourceParser;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 118
    :goto_0
    invoke-direct {p0, v0}, Lo/AbstractCursor$Activity;->e(Lo/XmlResourceParser;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 119
    new-instance v2, Lo/AbstractCursor$Activity$Application;

    invoke-direct {v2, p0, v1}, Lo/AbstractCursor$Activity$Application;-><init>(Lo/AbstractCursor$Activity;Lo/AbstractCursor$2;)V

    invoke-static {}, Lo/PermissionGroupInfo;->e()Lo/PermissionGroupInfo;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lo/XmlResourceParser;->a(Lo/BulkCursorNative;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    return v0

    .line 122
    :cond_1
    invoke-direct {p0, v0}, Lo/AbstractCursor$Activity;->c(Lo/XmlResourceParser;)V

    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized n()Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-direct {p0}, Lo/AbstractCursor$Activity;->n()Lo/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lo/XmlResourceParser;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lo/AbstractCursor$Activity;->n()Lo/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lo/XmlResourceParser;->c()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 3

    .line 99
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    monitor-exit p0

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lo/AbstractCursor$Activity;->d:Lo/XmlResourceParser;

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lo/AbstractCursor$Activity;->d:Lo/XmlResourceParser;

    .line 107
    iget-object v2, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;

    .line 108
    iput-object v1, p0, Lo/AbstractCursor$Activity;->a:Lo/XmlResourceParser;

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-direct {p0, v2}, Lo/AbstractCursor$Activity;->c(Lo/XmlResourceParser;)V

    .line 111
    invoke-direct {p0, v0}, Lo/AbstractCursor$Activity;->c(Lo/XmlResourceParser;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
