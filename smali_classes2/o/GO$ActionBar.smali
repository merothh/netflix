.class public final Lo/GO$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/GO$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 32
    const-class v0, Lo/m;

    new-instance v1, Lo/GO;

    invoke-direct {v1}, Lo/GO;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 35
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 36
    sget-object v1, Lo/u$TaskDescription;->e:Lo/u$TaskDescription;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$1;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->b(Lo/Og$TaskDescription;Lo/alA;)V

    .line 44
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    sget-object v1, Lo/u$StateListAnimator;->e:Lo/u$StateListAnimator;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasModuleImpl$Companion$init$2;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    return-void
.end method

.method public final c()Lo/m;
    .locals 1

    .line 52
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 107
    const-class v0, Lo/m;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/m;

    return-object v0
.end method
