.class public final Lo/ZC$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SearchModuleImpl"

    .line 35
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/ZC$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 65
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    sget-object v1, Lo/u$VoiceInteractor;->e:Lo/u$VoiceInteractor;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchModuleImpl$Companion$initNavigationRouter$1;->d:Lcom/netflix/mediaclient/ui/search/SearchModuleImpl$Companion$initNavigationRouter$1;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    .line 69
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    sget-object v1, Lo/u$AssistContent;->e:Lo/u$AssistContent;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchModuleImpl$Companion$initNavigationRouter$2;->e:Lcom/netflix/mediaclient/ui/search/SearchModuleImpl$Companion$initNavigationRouter$2;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->b(Lo/Og$TaskDescription;Lo/alA;)V

    .line 74
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    sget-object v1, Lo/u$TaskStackBuilder;->a:Lo/u$TaskStackBuilder;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchModuleImpl$Companion$initNavigationRouter$3;->d:Lcom/netflix/mediaclient/ui/search/SearchModuleImpl$Companion$initNavigationRouter$3;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->b(Lo/Og$TaskDescription;Lo/alA;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 38
    const-class v0, Lo/v;

    new-instance v1, Lo/ZC$TaskDescription$Application;

    invoke-direct {v1}, Lo/ZC$TaskDescription$Application;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 60
    move-object v0, p0

    check-cast v0, Lo/ZC$TaskDescription;

    invoke-virtual {v0}, Lo/ZC$TaskDescription;->b()V

    return-void
.end method
