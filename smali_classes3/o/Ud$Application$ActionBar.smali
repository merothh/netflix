.class public final Lo/Ud$Application$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ud$Application;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final d:Ljava/lang/Class;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lo/Ud;

    invoke-direct {v0}, Lo/Ud;-><init>()V

    invoke-virtual {v0}, Lo/Ud;->c()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lo/Ud$Application$ActionBar;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lo/Ud;

    invoke-direct {v0}, Lo/Ud;-><init>()V

    invoke-virtual {v0, p1}, Lo/Ud;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

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

    .line 43
    iget-object v0, p0, Lo/Ud$Application$ActionBar;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public d(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lo/Ud;

    invoke-direct {v0}, Lo/Ud;-><init>()V

    invoke-virtual {v0, p1}, Lo/Ud;->d(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lo/Ud;

    invoke-direct {v0}, Lo/Ud;-><init>()V

    invoke-virtual {v0, p1}, Lo/Ud;->e(Landroid/app/Activity;)V

    return-void
.end method
