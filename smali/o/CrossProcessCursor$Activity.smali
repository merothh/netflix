.class Lo/CrossProcessCursor$Activity;
.super Lcom/facebook/datasource/AbstractDataSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrossProcessCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrossProcessCursor$Activity$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/XmlResourceParser<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private c:I

.field final synthetic d:Lo/CrossProcessCursor;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lo/CrossProcessCursor;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/CrossProcessCursor$Activity;->d:Lo/CrossProcessCursor;

    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 117
    invoke-static {p1}, Lo/CrossProcessCursor;->a(Lo/CrossProcessCursor;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->o()V

    :cond_0
    return-void
.end method

.method private a(ILo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 209
    invoke-interface {p2}, Lo/XmlResourceParser;->e()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lo/CrossProcessCursor$Activity;->c(ILo/XmlResourceParser;Z)V

    .line 212
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->m()Lo/XmlResourceParser;

    move-result-object v0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 213
    invoke-interface {p2}, Lo/XmlResourceParser;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lo/CrossProcessCursor$Activity;->c(Ljava/lang/Object;Z)Z

    .line 215
    :cond_1
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->l()V

    return-void
.end method

.method private a(Lo/XmlResourceParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p1}, Lo/XmlResourceParser;->g()Z

    :cond_0
    return-void
.end method

.method private declared-synchronized b(I)Lo/XmlResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lo/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lo/CrossProcessCursor$Activity;ILo/XmlResourceParser;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lo/CrossProcessCursor$Activity;->c(ILo/XmlResourceParser;)V

    return-void
.end method

.method private c(ILo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Lo/CrossProcessCursor$Activity;->d(ILo/XmlResourceParser;)Lo/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/CrossProcessCursor$Activity;->a(Lo/XmlResourceParser;)V

    if-nez p1, :cond_0

    .line 221
    invoke-interface {p2}, Lo/XmlResourceParser;->j()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lo/CrossProcessCursor$Activity;->g:Ljava/lang/Throwable;

    .line 223
    :cond_0
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->l()V

    return-void
.end method

.method private c(ILo/XmlResourceParser;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/XmlResourceParser<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget v0, p0, Lo/CrossProcessCursor$Activity;->a:I

    .line 241
    iget v1, p0, Lo/CrossProcessCursor$Activity;->a:I

    .line 242
    invoke-direct {p0, p1}, Lo/CrossProcessCursor$Activity;->e(I)Lo/XmlResourceParser;

    move-result-object v2

    if-ne p2, v2, :cond_4

    iget p2, p0, Lo/CrossProcessCursor$Activity;->a:I

    if-ne p1, p2, :cond_0

    goto :goto_3

    .line 250
    :cond_0
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->m()Lo/XmlResourceParser;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget p2, p0, Lo/CrossProcessCursor$Activity;->a:I

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    .line 253
    :cond_2
    :goto_0
    iput p1, p0, Lo/CrossProcessCursor$Activity;->a:I

    .line 255
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-le v0, p1, :cond_3

    .line 258
    invoke-direct {p0, v0}, Lo/CrossProcessCursor$Activity;->b(I)Lo/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/CrossProcessCursor$Activity;->a(Lo/XmlResourceParser;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void

    .line 243
    :cond_4
    :goto_3
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 255
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized d(ILo/XmlResourceParser;)Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/XmlResourceParser<",
            "TT;>;)",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 264
    :try_start_0
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->m()Lo/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    .line 265
    monitor-exit p0

    return-object p1

    .line 267
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lo/CrossProcessCursor$Activity;->e(I)Lo/XmlResourceParser;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 268
    invoke-direct {p0, p1}, Lo/CrossProcessCursor$Activity;->b(I)Lo/XmlResourceParser;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 270
    :cond_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lo/CrossProcessCursor$Activity;ILo/XmlResourceParser;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lo/CrossProcessCursor$Activity;->a(ILo/XmlResourceParser;)V

    return-void
.end method

.method private declared-synchronized e(I)Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private l()V
    .locals 2

    .line 227
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 228
    iget v1, p0, Lo/CrossProcessCursor$Activity;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lo/CrossProcessCursor$Activity;->e(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized m()Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lo/CrossProcessCursor$Activity;->a:I

    invoke-direct {p0, v0}, Lo/CrossProcessCursor$Activity;->e(I)Lo/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o()V
    .locals 5

    .line 123
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/CrossProcessCursor$Activity;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->d:Lo/CrossProcessCursor;

    invoke-static {v0}, Lo/CrossProcessCursor;->b(Lo/CrossProcessCursor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 131
    iput v0, p0, Lo/CrossProcessCursor$Activity;->c:I

    .line 132
    iput v0, p0, Lo/CrossProcessCursor$Activity;->a:I

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 135
    iget-object v2, p0, Lo/CrossProcessCursor$Activity;->d:Lo/CrossProcessCursor;

    invoke-static {v2}, Lo/CrossProcessCursor;->b(Lo/CrossProcessCursor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/UserInfo;

    invoke-interface {v2}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/XmlResourceParser;

    .line 136
    iget-object v3, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v3, Lo/CrossProcessCursor$Activity$TaskDescription;

    invoke-direct {v3, p0, v1}, Lo/CrossProcessCursor$Activity$TaskDescription;-><init>(Lo/CrossProcessCursor$Activity;I)V

    invoke-static {}, Lo/PermissionGroupInfo;->e()Lo/PermissionGroupInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lo/XmlResourceParser;->a(Lo/BulkCursorNative;Ljava/util/concurrent/Executor;)V

    .line 140
    invoke-interface {v2}, Lo/XmlResourceParser;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->d:Lo/CrossProcessCursor;

    invoke-static {v0}, Lo/CrossProcessCursor;->a(Lo/CrossProcessCursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->o()V

    .line 180
    :cond_0
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->m()Lo/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Lo/XmlResourceParser;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 166
    :try_start_0
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->d:Lo/CrossProcessCursor;

    invoke-static {v0}, Lo/CrossProcessCursor;->a(Lo/CrossProcessCursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->o()V

    .line 170
    :cond_0
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->m()Lo/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {v0}, Lo/XmlResourceParser;->c()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
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

    .line 186
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->d:Lo/CrossProcessCursor;

    invoke-static {v0}, Lo/CrossProcessCursor;->a(Lo/CrossProcessCursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lo/CrossProcessCursor$Activity;->o()V

    .line 191
    :cond_0
    monitor-enter p0

    .line 194
    :try_start_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 195
    monitor-exit p0

    return v1

    .line 197
    :cond_1
    iget-object v0, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 198
    iput-object v2, p0, Lo/CrossProcessCursor$Activity;->b:Ljava/util/ArrayList;

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 201
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/XmlResourceParser;

    invoke-direct {p0, v2}, Lo/CrossProcessCursor$Activity;->a(Lo/XmlResourceParser;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
