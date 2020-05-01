.class final Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;->b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 28

    move-object/from16 v0, p1

    const-string v1, "netflixActivity"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extrasFeedItem"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 58
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AG;

    invoke-virtual {v2}, Lo/AG;->e()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    .line 62
    sget-object v2, Lo/GT;->h:Lo/GT$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 66
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 68
    new-instance v9, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v5, 0xf1bfcc7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    check-cast v9, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 75
    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v10, v3

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1fff

    const/16 v27, 0x0

    invoke-direct/range {v10 .. v27}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    .line 64
    invoke-static {v0, v1, v2, v9, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
