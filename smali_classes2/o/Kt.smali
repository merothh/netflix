.class public final Lo/Kt;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Kt$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/Kt$Application;


# instance fields
.field private final a:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/bs;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Kt$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Kt$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Kt;->d:Lo/Kt$Application;

    return-void
.end method

.method public constructor <init>(Lo/alB;Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "+",
            "Lo/bs;",
            ">;",
            "Lo/alB<",
            "+",
            "Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getNetflixRepository"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getLolomoRecyclerViewAdapter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lo/Kt;->a:Lo/alB;

    iput-object p2, p0, Lo/Kt;->b:Lo/alB;

    return-void
.end method

.method public static final synthetic a(Lo/Kt;)Lo/alB;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/Kt;->b:Lo/alB;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    const-string p1, "video_ids"

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 36
    array-length v1, p1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    :cond_2
    const/4 p2, 0x1

    :cond_3
    if-nez p2, :cond_4

    .line 37
    iget-object p2, p0, Lo/Kt;->a:Lo/alB;

    invoke-interface {p2}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/bs;

    .line 38
    new-instance v0, Lo/CharSequenceTransformation;

    .line 39
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "summary"

    const-string v3, "topTenBoxart"

    .line 40
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 41
    sget-object v3, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 38
    invoke-direct {v0, v1, v2, v3}, Lo/CharSequenceTransformation;-><init>(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    check-cast v0, Lo/DateTransformation;

    .line 43
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/LolomoReloadVideosReceiver$onReceive$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoReloadVideosReceiver$onReceive$1;-><init>(Lo/Kt;[Ljava/lang/String;)V

    check-cast v1, Lo/alA;

    .line 37
    invoke-interface {p2, v0, v1}, Lo/bs;->d(Lo/DateTransformation;Lo/alA;)V

    :cond_4
    return-void
.end method
