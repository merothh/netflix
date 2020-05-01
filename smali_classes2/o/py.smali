.class public final Lo/py;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/py$Application;,
        Lo/py$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/py$TaskDescription;


# instance fields
.field private final c:Lo/pq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/py$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/py$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/py;->b:Lo/py$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lo/pq;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/py;->c:Lo/pq;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/alN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/alN<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 86
    const-class v0, Lo/Ck;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ck;

    .line 67
    invoke-interface {v0, p1}, Lo/Ck;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    .line 69
    invoke-interface {p4, v1, v1}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 74
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    iget-object p1, p0, Lo/py;->c:Lo/pq;

    if-eqz p1, :cond_1

    .line 81
    new-instance v2, Lo/py$Application;

    invoke-direct {v2, p2, p3, p4}, Lo/py$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/alN;)V

    check-cast v2, Lo/pq$ActionBar;

    .line 79
    invoke-interface {p1, v0, v1, v2}, Lo/pq;->d(JLo/pq$ActionBar;)V

    :cond_1
    return-void

    .line 76
    :catch_0
    invoke-interface {p4, v1, v1}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
