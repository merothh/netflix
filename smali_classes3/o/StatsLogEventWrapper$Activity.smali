.class public final Lo/StatsLogEventWrapper$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatsLogEventWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lo/StatsLogEventWrapper$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lo/WebStorage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lo/StatsLogEventWrapper;->a()Lo/aka;

    move-result-object v0

    sget-object v1, Lo/StatsLogEventWrapper;->b:Lo/StatsLogEventWrapper$Activity;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Single;

    return-object v0
.end method
