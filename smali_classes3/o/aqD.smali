.class public Lo/aqD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final d:Lo/aqD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aqD;

    invoke-direct {v0}, Lo/aqD;-><init>()V

    sput-object v0, Lo/aqD;->d:Lo/aqD;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/chromium/base/task/DefaultTaskExecutor;->a()Lorg/chromium/base/task/ChoreographerTaskRunner;

    move-result-object v0

    return-object v0
.end method
