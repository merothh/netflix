.class public final Lo/Ns$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "MultiMonthModuleImpl"

    .line 11
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/Ns$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 14
    const-class v0, Lo/p;

    new-instance v1, Lo/Ns;

    invoke-direct {v1}, Lo/Ns;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    sget-object v1, Lo/u$PendingIntent;->c:Lo/u$PendingIntent;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;->a:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthModuleImpl$Companion$init$1;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    return-void
.end method
