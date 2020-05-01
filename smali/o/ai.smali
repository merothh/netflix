.class public final Lo/ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ai$ActionBar;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final a:Lo/ai$ActionBar;


# instance fields
.field private e:Lo/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ai$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ai$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ai;->a:Lo/ai$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lo/gY;->a:Lo/gY$Activity;

    invoke-virtual {v0}, Lo/gY$Activity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lo/au;->a:Lo/au$Application;

    invoke-virtual {v0, p1, p2}, Lo/au$Application;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(ZZJ)Lo/ah;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/ai;->e:Lo/ah;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lo/ak;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/ak;-><init>(ZZJ)V

    check-cast v0, Lo/ah;

    iput-object v0, p0, Lo/ai;->e:Lo/ah;

    .line 33
    :cond_0
    iget-object p1, p0, Lo/ai;->e:Lo/ah;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.performance.api.capture.PerformanceMetricsManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
