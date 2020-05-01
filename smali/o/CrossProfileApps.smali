.class public final Lo/CrossProfileApps;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/CrossProfileApps$2;

    invoke-direct {v0}, Lo/CrossProfileApps$2;-><init>()V

    sput-object v0, Lo/CrossProfileApps;->b:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v0, Lo/CrossProfileApps$5;

    invoke-direct {v0}, Lo/CrossProfileApps$5;-><init>()V

    sput-object v0, Lo/CrossProfileApps;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 41
    sget-object v0, Lo/CrossProfileApps;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 36
    sget-object v0, Lo/CrossProfileApps;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method
