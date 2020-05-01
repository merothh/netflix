.class public Lo/Parcelable;
.super Lo/Parcel;
.source ""


# static fields
.field private static final c:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static volatile e:Lo/Parcelable;


# instance fields
.field private a:Lo/Parcel;

.field private b:Lo/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lo/Parcelable$2;

    invoke-direct {v0}, Lo/Parcelable$2;-><init>()V

    sput-object v0, Lo/Parcelable;->d:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v0, Lo/Parcelable$4;

    invoke-direct {v0}, Lo/Parcelable$4;-><init>()V

    sput-object v0, Lo/Parcelable;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lo/Parcel;-><init>()V

    .line 58
    new-instance v0, Lo/Creator;

    invoke-direct {v0}, Lo/Creator;-><init>()V

    iput-object v0, p0, Lo/Parcelable;->a:Lo/Parcel;

    .line 59
    iget-object v0, p0, Lo/Parcelable;->a:Lo/Parcel;

    iput-object v0, p0, Lo/Parcelable;->b:Lo/Parcel;

    return-void
.end method

.method public static b()Lo/Parcelable;
    .locals 2

    .line 69
    sget-object v0, Lo/Parcelable;->e:Lo/Parcelable;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lo/Parcelable;->e:Lo/Parcelable;

    return-object v0

    .line 72
    :cond_0
    const-class v0, Lo/Parcelable;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lo/Parcelable;->e:Lo/Parcelable;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lo/Parcelable;

    invoke-direct {v1}, Lo/Parcelable;-><init>()V

    sput-object v1, Lo/Parcelable;->e:Lo/Parcelable;

    .line 76
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lo/Parcelable;->e:Lo/Parcelable;

    return-object v0

    :catchall_0
    move-exception v1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 111
    sget-object v0, Lo/Parcelable;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/Parcelable;->b:Lo/Parcel;

    invoke-virtual {v0, p1}, Lo/Parcel;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lo/Parcelable;->b:Lo/Parcel;

    invoke-virtual {v0}, Lo/Parcel;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lo/Parcelable;->b:Lo/Parcel;

    invoke-virtual {v0, p1}, Lo/Parcel;->b(Ljava/lang/Runnable;)V

    return-void
.end method
