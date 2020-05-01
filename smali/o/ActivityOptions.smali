.class public Lo/ActivityOptions;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lo/DHPrivateKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/WorkerThread;

    invoke-direct {v0}, Lo/WorkerThread;-><init>()V

    sput-object v0, Lo/ActivityOptions;->c:Lo/DHPrivateKeySpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 26
    sget-object v0, Lo/ActivityOptions;->c:Lo/DHPrivateKeySpec;

    invoke-interface {v0, p0}, Lo/DHPrivateKeySpec;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 30
    sget-object v0, Lo/ActivityOptions;->c:Lo/DHPrivateKeySpec;

    invoke-interface {v0, p0, p1}, Lo/DHPrivateKeySpec;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-object v0, Lo/ActivityOptions;->c:Lo/DHPrivateKeySpec;

    invoke-interface {v0, p0}, Lo/DHPrivateKeySpec;->b(Ljava/lang/String;)V

    return-void
.end method
