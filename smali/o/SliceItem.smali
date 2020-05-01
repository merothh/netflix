.class public final Lo/SliceItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Slice;
.implements Lo/InstantAppRequest$Application;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/Slice<",
        "TZ;>;",
        "Lo/InstantAppRequest$Application;"
    }
.end annotation


# static fields
.field private static final c:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lo/SliceItem<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lo/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Slice<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private final d:Lo/IntentFilterVerificationInfo;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lo/SliceItem$1;

    invoke-direct {v0}, Lo/SliceItem$1;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lo/InstantAppRequest;->b(ILo/InstantAppRequest$ActionBar;)Lo/CharArrayReader$Activity;

    move-result-object v0

    sput-object v0, Lo/SliceItem;->c:Lo/CharArrayReader$Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lo/IntentFilterVerificationInfo;->d()Lo/IntentFilterVerificationInfo;

    move-result-object v0

    iput-object v0, p0, Lo/SliceItem;->d:Lo/IntentFilterVerificationInfo;

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lo/SliceItem;->a:Lo/Slice;

    .line 51
    sget-object v0, Lo/SliceItem;->c:Lo/CharArrayReader$Activity;

    invoke-interface {v0, p0}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Lo/Slice;)Lo/SliceItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Slice<",
            "TZ;>;)",
            "Lo/SliceItem<",
            "TZ;>;"
        }
    .end annotation

    .line 34
    sget-object v0, Lo/SliceItem;->c:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SliceItem;

    invoke-static {v0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SliceItem;

    .line 35
    invoke-direct {v0, p0}, Lo/SliceItem;->d(Lo/Slice;)V

    return-object v0
.end method

.method private d(Lo/Slice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/SliceItem;->e:Z

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lo/SliceItem;->b:Z

    .line 46
    iput-object p1, p0, Lo/SliceItem;->a:Lo/Slice;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lo/SliceItem;->d:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    .line 57
    iget-boolean v0, p0, Lo/SliceItem;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lo/SliceItem;->b:Z

    .line 61
    iget-boolean v0, p0, Lo/SliceItem;->e:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lo/SliceItem;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_()Lo/IntentFilterVerificationInfo;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/SliceItem;->d:Lo/IntentFilterVerificationInfo;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lo/SliceItem;->a:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lo/SliceItem;->a:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 80
    iget-object v0, p0, Lo/SliceItem;->a:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->e()I

    move-result v0

    return v0
.end method

.method public declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/SliceItem;->d:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lo/SliceItem;->e:Z

    .line 88
    iget-boolean v0, p0, Lo/SliceItem;->b:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lo/SliceItem;->a:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->j()V

    .line 90
    invoke-direct {p0}, Lo/SliceItem;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
