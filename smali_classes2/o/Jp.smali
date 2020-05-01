.class public final Lo/Jp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Jp$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/Jp$Application;


# instance fields
.field private final a:Lo/aga;

.field private final b:Landroid/content/Context;

.field private final e:Lo/Jq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Jp$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Jp$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Jp;->d:Lo/Jp$Application;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/aga;Lo/Jq;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildVariantPolicy"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throttlingVariantPolicy"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jp;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/Jp;->a:Lo/aga;

    iput-object p3, p0, Lo/Jp;->e:Lo/Jq;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;ZZ)Z
    .locals 1

    const-string v0, "activityIntent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    return p1

    :cond_0
    if-nez p3, :cond_1

    return p1

    .line 36
    :cond_1
    iget-object p2, p0, Lo/Jp;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    return p1

    .line 40
    :cond_2
    iget-object p2, p0, Lo/Jp;->a:Lo/aga;

    invoke-interface {p2}, Lo/aga;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    return p1

    .line 44
    :cond_3
    iget-object p2, p0, Lo/Jp;->e:Lo/Jq;

    invoke-virtual {p2}, Lo/Jq;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    return p1

    .line 48
    :cond_4
    iget-object p1, p0, Lo/Jp;->a:Lo/aga;

    invoke-interface {p1}, Lo/aga;->c()V

    .line 49
    iget-object p1, p0, Lo/Jp;->e:Lo/Jq;

    invoke-virtual {p1}, Lo/Jq;->c()V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/Jp;->e:Lo/Jq;

    invoke-virtual {v0}, Lo/Jq;->e()V

    return-void
.end method
