.class public final enum Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetflixTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

.field public static final enum b:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

.field public static final enum c:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

.field public static final enum d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

.field public static final enum e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

.field private static final synthetic g:[Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;


# instance fields
.field h:I

.field i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcom/netflix/cl/model/AppView;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 126
    new-instance v6, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->hH:I

    const-class v4, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    sget-object v5, Lcom/netflix/cl/model/AppView;->homeTab:Lcom/netflix/cl/model/AppView;

    const-string v1, "HOME"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/netflix/cl/model/AppView;)V

    sput-object v6, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v10, Lcom/netflix/mediaclient/ui/R$Fragment;->qM:I

    const-class v1, Lo/v;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/v;

    invoke-interface {v1}, Lo/v;->b()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/netflix/cl/model/AppView;->searchTab:Lcom/netflix/cl/model/AppView;

    const-string v8, "SEARCH"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/netflix/cl/model/AppView;)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->tP:I

    const-class v1, Lo/m;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/m;

    invoke-interface {v1}, Lo/m;->c()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/netflix/cl/model/AppView;->trailersTab:Lcom/netflix/cl/model/AppView;

    const-string v2, "TRAILERS"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/netflix/cl/model/AppView;)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->b:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v10, Lcom/netflix/mediaclient/ui/R$Fragment;->fi:I

    invoke-static {}, Lo/QU;->c()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/netflix/cl/model/AppView;->downloadsTab:Lcom/netflix/cl/model/AppView;

    const-string v8, "DOWNLOADS"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/netflix/cl/model/AppView;)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->pm:I

    const-class v5, Lo/Ir;

    sget-object v6, Lcom/netflix/cl/model/AppView;->moreTab:Lcom/netflix/cl/model/AppView;

    const-string v2, "PROFILE"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/netflix/cl/model/AppView;)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    .line 125
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->b:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->g:[Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;Lcom/netflix/cl/model/AppView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/netflix/cl/model/AppView;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p3, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->h:I

    .line 140
    iput-object p4, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->i:Ljava/lang/Class;

    .line 141
    iput-object p5, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->j:Lcom/netflix/cl/model/AppView;

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)Landroid/content/Intent;
    .locals 2

    .line 159
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$10;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 178
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-object p0

    .line 173
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 174
    invoke-static {}, Lo/ady;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lo/It;->d()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/Ir;->g()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p1

    .line 171
    :cond_2
    invoke-static {p0, v1}, Lo/QU;->d(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 167
    :cond_3
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object v0, Lo/u$TaskDescription;->e:Lo/u$TaskDescription;

    .line 168
    invoke-virtual {p1, v0}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p0}, Lo/Og$Application;->c(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 163
    :cond_4
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object v0, Lo/u$TaskStackBuilder;->a:Lo/u$TaskStackBuilder;

    .line 164
    invoke-virtual {p1, v0}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    .line 165
    invoke-virtual {p1, p0}, Lo/Og$Application;->c(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;
    .locals 5

    .line 183
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->values()[Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 184
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;
    .locals 1

    .line 125
    const-class v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;
    .locals 1

    .line 125
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->g:[Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->j:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->h:I

    return v0
.end method

.method public d()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 2

    .line 194
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$10;->a:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewAccountMenuCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewAccountMenuCommand;-><init>()V

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must add a new command here for tab!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;-><init>()V

    return-object v0

    .line 200
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->j()Lcom/netflix/cl/model/event/session/command/Command;

    move-result-object v0

    return-object v0

    .line 198
    :cond_3
    new-instance v0, Lcom/netflix/cl/model/event/session/command/SearchCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SearchCommand;-><init>()V

    return-object v0

    .line 196
    :cond_4
    new-instance v0, Lcom/netflix/cl/model/event/session/command/HomeCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/HomeCommand;-><init>()V

    return-object v0
.end method

.method public d(Landroid/app/Activity;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->i:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
