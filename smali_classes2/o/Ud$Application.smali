.class public final Lo/Ud$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "PlayerUIModuleImpl"

    .line 35
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/Ud$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 38
    const-class v0, Lo/q;

    .line 39
    new-instance v1, Lo/Ud$Application$ActionBar;

    invoke-direct {v1}, Lo/Ud$Application$ActionBar;-><init>()V

    .line 37
    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 55
    sget-object v1, Lo/u$Dialog;->d:Lo/u$Dialog;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$2;->d:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$2;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    .line 66
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 67
    sget-object v1, Lo/u$Fragment;->e:Lo/u$Fragment;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;->e:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$3;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    .line 80
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 81
    sget-object v1, Lo/u$FragmentManager;->a:Lo/u$FragmentManager;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;->a:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$4;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    .line 92
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 93
    sget-object v1, Lo/u$SharedElementCallback;->a:Lo/u$SharedElementCallback;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$5;->a:Lcom/netflix/mediaclient/ui/player/PlayerUIModuleImpl$Companion$init$5;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    return-void
.end method
