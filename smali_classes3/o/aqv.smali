.class public Lo/aqv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Lo/aqv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aqv;

    invoke-direct {v0}, Lo/aqv;-><init>()V

    sput-object v0, Lo/aqv;->a:Lo/aqv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/task/AsyncTask;->e(Ljava/lang/Runnable;)V

    return-void
.end method
