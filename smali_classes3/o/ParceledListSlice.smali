.class public Lo/ParceledListSlice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LimitedLengthInputStream;


# static fields
.field private static a:I

.field private static b:Lo/ParceledListSlice;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lo/MacAuthenticatedInputStream;

.field private f:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

.field private g:J

.field private h:Ljava/io/IOException;

.field private i:J

.field private j:J

.field private l:Lo/ParceledListSlice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ParceledListSlice;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/ParceledListSlice;
    .locals 3

    .line 40
    sget-object v0, Lo/ParceledListSlice;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lo/ParceledListSlice;->b:Lo/ParceledListSlice;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lo/ParceledListSlice;->b:Lo/ParceledListSlice;

    .line 43
    iget-object v2, v1, Lo/ParceledListSlice;->l:Lo/ParceledListSlice;

    sput-object v2, Lo/ParceledListSlice;->b:Lo/ParceledListSlice;

    const/4 v2, 0x0

    .line 44
    iput-object v2, v1, Lo/ParceledListSlice;->l:Lo/ParceledListSlice;

    .line 45
    sget v2, Lo/ParceledListSlice;->a:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lo/ParceledListSlice;->a:I

    .line 46
    monitor-exit v0

    return-object v1

    .line 48
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance v0, Lo/ParceledListSlice;

    invoke-direct {v0}, Lo/ParceledListSlice;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lo/ParceledListSlice;->e:Lo/MacAuthenticatedInputStream;

    .line 146
    iput-object v0, p0, Lo/ParceledListSlice;->d:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 147
    iput-wide v1, p0, Lo/ParceledListSlice;->g:J

    .line 148
    iput-wide v1, p0, Lo/ParceledListSlice;->i:J

    .line 149
    iput-wide v1, p0, Lo/ParceledListSlice;->j:J

    .line 150
    iput-object v0, p0, Lo/ParceledListSlice;->h:Ljava/io/IOException;

    .line 151
    iput-object v0, p0, Lo/ParceledListSlice;->f:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-void
.end method


# virtual methods
.method public a(J)Lo/ParceledListSlice;
    .locals 0

    .line 84
    iput-wide p1, p0, Lo/ParceledListSlice;->g:J

    return-object p0
.end method

.method public b(J)Lo/ParceledListSlice;
    .locals 0

    .line 94
    iput-wide p1, p0, Lo/ParceledListSlice;->j:J

    return-object p0
.end method

.method public b(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lo/ParceledListSlice;
    .locals 0

    .line 126
    iput-object p1, p0, Lo/ParceledListSlice;->f:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object p0
.end method

.method public b(Ljava/io/IOException;)Lo/ParceledListSlice;
    .locals 0

    .line 115
    iput-object p1, p0, Lo/ParceledListSlice;->h:Ljava/io/IOException;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/ParceledListSlice;
    .locals 0

    .line 74
    iput-object p1, p0, Lo/ParceledListSlice;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Lo/ParceledListSlice;
    .locals 0

    .line 104
    iput-wide p1, p0, Lo/ParceledListSlice;->i:J

    return-object p0
.end method

.method public c()V
    .locals 3

    .line 131
    sget-object v0, Lo/ParceledListSlice;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    sget v1, Lo/ParceledListSlice;->a:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 133
    invoke-direct {p0}, Lo/ParceledListSlice;->e()V

    .line 134
    sget v1, Lo/ParceledListSlice;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lo/ParceledListSlice;->a:I

    .line 136
    sget-object v1, Lo/ParceledListSlice;->b:Lo/ParceledListSlice;

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lo/ParceledListSlice;->b:Lo/ParceledListSlice;

    iput-object v1, p0, Lo/ParceledListSlice;->l:Lo/ParceledListSlice;

    .line 139
    :cond_0
    sput-object p0, Lo/ParceledListSlice;->b:Lo/ParceledListSlice;

    .line 141
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Lo/MacAuthenticatedInputStream;)Lo/ParceledListSlice;
    .locals 0

    .line 63
    iput-object p1, p0, Lo/ParceledListSlice;->e:Lo/MacAuthenticatedInputStream;

    return-object p0
.end method
