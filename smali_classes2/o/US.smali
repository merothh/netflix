.class public final Lo/US;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/US;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/US;

    invoke-direct {v0}, Lo/US;-><init>()V

    sput-object v0, Lo/US;->b:Lo/US;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 3

    .line 26
    new-instance v0, Lo/Factory;

    invoke-direct {v0, p1}, Lo/Factory;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->dX:I

    sget-object v1, Lo/US$Activity;->e:Lo/US$Activity;

    check-cast v1, Lo/Factory$StateListAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lo/Factory;->a(ILandroid/view/ViewGroup;Lo/Factory$StateListAnimator;)V

    return-void
.end method

.method public static final synthetic a(Lo/US;Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/US;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lo/US$TaskDescription;

    invoke-direct {v0}, Lo/US$TaskDescription;-><init>()V

    check-cast v0, Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    .line 21
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    invoke-static {p1, v0, v2, v1}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method
