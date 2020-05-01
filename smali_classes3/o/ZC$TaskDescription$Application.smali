.class public final Lo/ZC$TaskDescription$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZC$TaskDescription;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final c:Ljava/lang/Class;
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
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lo/ZC;

    invoke-direct {v0}, Lo/ZC;-><init>()V

    invoke-virtual {v0}, Lo/ZC;->b()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lo/ZC$TaskDescription$Application;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lo/ZC;

    invoke-direct {v0}, Lo/ZC;-><init>()V

    invoke-virtual {v0, p1}, Lo/ZC;->a(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lo/ZC;

    invoke-direct {v0}, Lo/ZC;-><init>()V

    invoke-virtual {v0, p1, p2}, Lo/ZC;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public a()Lo/Il;
    .locals 1

    .line 57
    new-instance v0, Lo/ZC;

    invoke-direct {v0}, Lo/ZC;-><init>()V

    invoke-virtual {v0}, Lo/ZC;->a()Lo/Il;

    move-result-object v0

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

    .line 53
    iget-object v0, p0, Lo/ZC$TaskDescription$Application;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lo/ZC;

    invoke-direct {v0}, Lo/ZC;-><init>()V

    invoke-virtual {v0, p1, p2}, Lo/ZC;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lo/ZC;

    invoke-direct {v0}, Lo/ZC;-><init>()V

    invoke-virtual {v0, p1}, Lo/ZC;->e(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
