.class public abstract Lo/u;
.super Lo/Og$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$Application;,
        Lo/u$LoaderManager;,
        Lo/u$Activity;,
        Lo/u$TaskDescription;,
        Lo/u$StateListAnimator;,
        Lo/u$Dialog;,
        Lo/u$Fragment;,
        Lo/u$FragmentManager;,
        Lo/u$SharedElementCallback;,
        Lo/u$VoiceInteractor;,
        Lo/u$AssistContent;,
        Lo/u$TaskStackBuilder;,
        Lo/u$PendingIntent;,
        Lo/u$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SOURCE:",
        "Ljava/lang/Object;",
        "DATA:",
        "Ljava/lang/Object;",
        ">",
        "Lo/Og$TaskDescription<",
        "TSOURCE;TDATA;>;"
    }
.end annotation


# static fields
.field private static final a:Lo/alA;
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

.field public static final b:Lo/u$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/u$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/u$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/u;->b:Lo/u$ActionBar;

    .line 21
    sget-object v0, Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;->e:Lcom/netflix/mediaclient/modules/routes/NetflixRoutes$Companion$defaultNavigate$1;

    check-cast v0, Lo/alA;

    sput-object v0, Lo/u;->a:Lo/alA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/Og$TaskDescription;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lo/u;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d()Lo/alA;
    .locals 1

    .line 16
    sget-object v0, Lo/u;->a:Lo/alA;

    return-object v0
.end method
