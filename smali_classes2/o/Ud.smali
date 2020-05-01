.class public final Lo/Ud;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ud$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/Ud$Application;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lo/CookieSyncManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ud$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ud$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ud;->d:Lo/Ud$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lo/Ty;

    iput-object v0, p0, Lo/Ud;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lo/Ty;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PlayerActivity.createNot\u2026dingIntentResume(videoId)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lo/CookieSyncManager;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/Ud;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public d(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of p1, p1, Lo/Ty;

    return p1
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lo/Ty;

    if-nez v0, :cond_0

    .line 25
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TX;->e(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lo/Ty;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
