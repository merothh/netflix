.class public final Lo/Og;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Og$TaskDescription;,
        Lo/Og$Application;,
        Lo/Og$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/Og$StateListAnimator;


# instance fields
.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lo/Og$TaskDescription<",
            "**>;",
            "Lo/alA<",
            "Lo/Og$Application<",
            "**>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Lo/Og$Application<",
            "Lo/akj;",
            "Lo/akj;",
            ">;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Og$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Og$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/alA;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Lo/Og$Application<",
            "Lo/akj;",
            "Lo/akj;",
            ">;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "routeNotFoundItinerary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Og;->e:Lo/alA;

    .line 134
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x8

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lo/Og;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final a(Lo/Og$TaskDescription;Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SOURCE:",
            "Ljava/lang/Object;",
            "DATA:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Og$TaskDescription<",
            "TSOURCE;TDATA;>;",
            "Lo/alA<",
            "-",
            "Lo/Og$Application<",
            "TSOURCE;TDATA;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lo/Og;->c:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lo/amk;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/alA;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type (com.netflix.mediaclient.ui.navigationrouter.NavigationRouter.Itinerary<*, *>) -> kotlin.Any"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final c()Lo/Og;
    .locals 1

    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Lo/Og$TaskDescription;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SOURCE:",
            "Ljava/lang/Object;",
            "DATA:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Og$TaskDescription<",
            "TSOURCE;TDATA;>;",
            "Lo/alA<",
            "-",
            "Lo/Og$Application<",
            "TSOURCE;TDATA;>;+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigate"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 153
    invoke-static {p2, v0}, Lo/amk;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/alA;

    invoke-direct {p0, p1, p2}, Lo/Og;->a(Lo/Og$TaskDescription;Lo/alA;)V

    return-void
.end method

.method public final d(Lo/Og$TaskDescription;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SOURCE:",
            "Ljava/lang/Object;",
            "DATA:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Og$TaskDescription<",
            "TSOURCE;TDATA;>;",
            "Lo/alA<",
            "-",
            "Lo/Og$Application<",
            "TSOURCE;TDATA;>;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigate"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1, p2}, Lo/Og;->a(Lo/Og$TaskDescription;Lo/alA;)V

    return-void
.end method

.method public final e(Lo/Og$TaskDescription;)Lo/Og$Application;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SOURCE:",
            "Ljava/lang/Object;",
            "DATA:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Og$TaskDescription<",
            "TSOURCE;TDATA;>;)",
            "Lo/Og$Application<",
            "TSOURCE;TDATA;>;"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lo/Og;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/amk;->e(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/alA;

    if-eqz v0, :cond_1

    .line 168
    new-instance v1, Lo/Og$Application;

    invoke-virtual {p1}, Lo/Og$TaskDescription;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lo/Og$Application;-><init>(Ljava/lang/String;Lo/alA;)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v1, Lo/Og$Application;

    invoke-virtual {p1}, Lo/Og$TaskDescription;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/Og;->e:Lo/alA;

    invoke-direct {v1, p1, v0}, Lo/Og$Application;-><init>(Ljava/lang/String;Lo/alA;)V

    :goto_0
    return-object v1
.end method
