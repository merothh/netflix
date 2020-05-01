.class Lo/jD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Z

.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final d:Lo/jF$Application;


# direct methods
.method public constructor <init>(Lo/jF$Application;ZLjava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/jD;->d:Lo/jF$Application;

    iput-boolean p2, p0, Lo/jD;->a:Z

    iput-object p3, p0, Lo/jD;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lo/jD;->d:Lo/jF$Application;

    iget-boolean v1, p0, Lo/jD;->a:Z

    iget-object v2, p0, Lo/jD;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0, v1, v2, p1, p2}, Lo/jF;->e(Lo/jF$Application;ZLjava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
