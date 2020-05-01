.class public final Lo/ZC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZC$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/ZC$TaskDescription;


# instance fields
.field private final b:Ljava/lang/Class;
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

    new-instance v0, Lo/ZC$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZC$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZC;->d:Lo/ZC$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iput-object v0, p0, Lo/ZC;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1, p2}, Lo/Zz;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object p1

    const-string p2, "SearchMenu.addSearchNavigation(activity, menu)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a()Lo/Il;
    .locals 1

    .line 33
    new-instance v0, Lo/ZA;

    invoke-direct {v0}, Lo/ZA;-><init>()V

    check-cast v0, Lo/Il;

    return-object v0
.end method

.method public b()Ljava/lang/Class;
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

    .line 31
    iget-object v0, p0, Lo/ZC;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1, p2}, Lo/Zy;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lo/ZH;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
