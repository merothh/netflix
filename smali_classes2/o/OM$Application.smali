.class public final Lo/OM$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/OM$Application;-><init>()V

    return-void
.end method

.method public static synthetic c(Lo/OM$Application;Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Ljava/util/HashMap;ILjava/lang/Object;)Landroid/content/Intent;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 51
    check-cast p3, Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/OM$Application;->a(Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lo/OM;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-class v0, Lo/OR;

    goto :goto_0

    .line 65
    :cond_0
    const-class v0, Lo/OO;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landingPage"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Lo/OM$Application;

    invoke-direct {v2}, Lo/OM$Application;->c()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 56
    check-cast p3, Ljava/io/Serializable;

    const-string p1, "notificationParams"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method public final d(Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)Landroid/content/Intent;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lo/OM$Application;->c(Lo/OM$Application;Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;Ljava/util/HashMap;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
