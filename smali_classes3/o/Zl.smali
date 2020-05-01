.class public final Lo/Zl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ze;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 19
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 20
    sget-object v1, Lo/u$Activity;->e:Lo/u$Activity;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$1;->e:Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$1;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    .line 39
    sget-object v0, Lo/Og;->d:Lo/Og$StateListAnimator;

    invoke-virtual {v0}, Lo/Og$StateListAnimator;->e()Lo/Og;

    move-result-object v0

    .line 40
    sget-object v1, Lo/u$LoaderManager;->e:Lo/u$LoaderManager;

    check-cast v1, Lo/Og$TaskDescription;

    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;->b:Lcom/netflix/mediaclient/ui/profiles/icons/impl/LolopiModuleImpl$init$2;

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, v2}, Lo/Og;->d(Lo/Og$TaskDescription;Lo/alA;)V

    return-void
.end method
