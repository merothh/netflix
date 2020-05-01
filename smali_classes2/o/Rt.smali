.class public final Lo/Rt;
.super Lcom/netflix/cl/model/CachedVideoInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Rt$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/Rt$ActionBar;


# instance fields
.field private final b:Lo/nD;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Rt$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Rt$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Rt;->e:Lo/Rt$ActionBar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/nD;Z)V
    .locals 2

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedStateInfo"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lo/nD;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedStateInfo.oxid"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lo/nD;->a()Lcom/netflix/cl/model/CachedVideoPlayableStatus;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p0, v0, v1, p3}, Lcom/netflix/cl/model/CachedVideoInfo;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/CachedVideoPlayableStatus;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lo/Rt;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/Rt;->b:Lo/nD;

    return-void
.end method

.method public static final d(Ljava/util/Map;)[Lo/Rt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/nD;",
            ">;)[",
            "Lo/Rt;"
        }
    .end annotation

    sget-object v0, Lo/Rt;->e:Lo/Rt$ActionBar;

    invoke-virtual {v0, p0}, Lo/Rt$ActionBar;->a(Ljava/util/Map;)[Lo/Rt;

    move-result-object p0

    return-object p0
.end method
