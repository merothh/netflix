.class public final Lo/Rc$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "OfflineEpisodesFragmentV2"

    .line 27
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/Rc$Activity;-><init>()V

    return-void
.end method

.method private final e()Lo/Rc;
    .locals 1

    .line 50
    sget-object v0, Lo/dK;->c:Lo/dK$TaskDescription;

    invoke-virtual {v0}, Lo/dK$TaskDescription;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/dK;->c:Lo/dK$TaskDescription;

    invoke-virtual {v0}, Lo/dK$TaskDescription;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lo/Ra;

    invoke-direct {v0}, Lo/Ra;-><init>()V

    check-cast v0, Lo/Rc;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lo/Rc;

    invoke-direct {v0}, Lo/Rc;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lo/Rc;
    .locals 2

    const-string v0, "titleId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title_id"

    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profile_id"

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    move-object p1, p0

    check-cast p1, Lo/Rc$Activity;

    invoke-direct {p1}, Lo/Rc$Activity;->e()Lo/Rc;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Lo/Rc;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Lo/Rc;
    .locals 2

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playable_id"

    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    move-object p1, p0

    check-cast p1, Lo/Rc$Activity;

    invoke-direct {p1}, Lo/Rc$Activity;->e()Lo/Rc;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Lo/Rc;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
