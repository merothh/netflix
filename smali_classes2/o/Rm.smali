.class public final Lo/Rm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Il;


# instance fields
.field private final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/content/Intent;",
            "Lcom/netflix/mediaclient/android/fragment/NetflixFrag;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V
    .locals 1

    const-string v0, "fragmentHelper"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Rm;->e:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    .line 124
    new-instance p1, Lo/Rm$StateListAnimator;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v0}, Lo/Rm$StateListAnimator;-><init>(II)V

    check-cast p1, Landroid/util/LruCache;

    iput-object p1, p0, Lo/Rm;->a:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Landroid/content/Intent;Z)V
    .locals 0

    const-string p3, "currentIntent"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lo/Rm;->e:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Lcom/netflix/cl/model/AppView;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object p1, Lcom/netflix/cl/model/AppView;->cachedVideos:Lcom/netflix/cl/model/AppView;

    return-object p1
.end method

.method public c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lo/Rm;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->f()V

    return-void
.end method

.method public c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)V
    .locals 0

    const-string p3, "intent"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Intent;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lo/Rm;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "smart_downloads_tutorial"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    sget-object p1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {p1}, Lo/fo$ActionBar;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    new-instance p1, Lo/Sl;

    invoke-direct {p1}, Lo/Sl;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 42
    :cond_1
    new-instance p1, Lo/RC;

    invoke-direct {p1}, Lo/RC;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    :cond_2
    const-string v0, "playable_id"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    sget-object v1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v1}, Lo/fo$ActionBar;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    sget-object v1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v1}, Lo/fo$ActionBar;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    new-instance p1, Lo/RI;

    invoke-direct {p1}, Lo/RI;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 51
    :cond_3
    sget-object v1, Lo/Rc;->b:Lo/Rc$Activity;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent.getStringExtra(Of\u2026esFragmentV2.PLAYABLE_ID)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lo/Rc$Activity;->e(Ljava/lang/String;)Lo/Rc;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    :cond_4
    const-string v0, "title_id"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    sget-object v1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v1}, Lo/fo$ActionBar;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    sget-object v1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v1}, Lo/fo$ActionBar;->d()Z

    move-result v1

    if-nez v1, :cond_5

    .line 57
    sget-object v1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v1}, Lo/fo$ActionBar;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 60
    new-instance p1, Lo/RI;

    invoke-direct {p1}, Lo/RI;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 62
    :cond_5
    sget-object v1, Lo/Rc;->b:Lo/Rc$Activity;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent.getStringExtra(Of\u2026sodesFragmentV2.TITLE_ID)"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "profile_id"

    .line 64
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "intent.getStringExtra(Of\u2026desFragmentV2.PROFILE_ID)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0, p1}, Lo/Rc$Activity;->a(Ljava/lang/String;Ljava/lang/String;)Lo/Rc;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 67
    :cond_6
    sget-object p1, Lo/dM;->e:Lo/dM$ActionBar;

    invoke-virtual {p1}, Lo/dM$ActionBar;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 68
    new-instance p1, Lo/RD;

    invoke-direct {p1}, Lo/RD;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 70
    :cond_7
    sget-object p1, Lo/dK;->c:Lo/dK$TaskDescription;

    invoke-virtual {p1}, Lo/dK$TaskDescription;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 71
    new-instance p1, Lo/RA;

    invoke-direct {p1}, Lo/RA;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 73
    :cond_8
    sget-object p1, Lo/dL;->c:Lo/dL$StateListAnimator;

    invoke-virtual {p1}, Lo/dL$StateListAnimator;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 74
    new-instance p1, Lo/Rz;

    invoke-direct {p1}, Lo/Rz;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 76
    :cond_9
    sget-object p1, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {p1}, Lo/er$TaskDescription;->e()Z

    move-result p1

    if-nez p1, :cond_d

    .line 77
    sget-object p1, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {p1}, Lo/er$TaskDescription;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    .line 81
    :cond_a
    sget-object p1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {p1}, Lo/fo$ActionBar;->b()Z

    move-result p1

    if-nez p1, :cond_c

    .line 82
    sget-object p1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {p1}, Lo/fo$ActionBar;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    .line 86
    :cond_b
    new-instance p1, Lo/RB;

    invoke-direct {p1}, Lo/RB;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 84
    :cond_c
    :goto_0
    new-instance p1, Lo/RH;

    invoke-direct {p1}, Lo/RH;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 79
    :cond_d
    :goto_1
    new-instance p1, Lo/RI;

    invoke-direct {p1}, Lo/RI;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1
.end method

.method public d(Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    instance-of v0, p2, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lo/Rm;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smart_downloads_tutorial"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-virtual {v0}, Lo/QU$TaskDescription;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
