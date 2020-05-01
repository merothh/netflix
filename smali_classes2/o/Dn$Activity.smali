.class public final Lo/Dn$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "EpisodesListSelectorDialogFragment"

    .line 37
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/Dn$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;J)Lo/Dn;
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lo/Dn;

    invoke-direct {v0}, Lo/Dn;-><init>()V

    .line 42
    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->I:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lo/Dn;->setStyle(II)V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_video_id"

    .line 45
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_episode_id"

    .line 46
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_player_id"

    .line 47
    invoke-virtual {v1, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    invoke-virtual {v0, v1}, Lo/Dn;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
