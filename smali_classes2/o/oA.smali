.class Lo/oA;
.super Ljava/lang/Object;

# interfaces
.implements Lo/oP;


# instance fields
.field private final c:Lo/ox;

.field private final d:Lo/sE;

.field private final e:Lo/ox$TaskDescription;


# direct methods
.method public constructor <init>(Lo/ox;Lo/ox$TaskDescription;Lo/sE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/oA;->c:Lo/ox;

    iput-object p2, p0, Lo/oA;->e:Lo/ox$TaskDescription;

    iput-object p3, p0, Lo/oA;->d:Lo/sE;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    iget-object v0, p0, Lo/oA;->c:Lo/ox;

    iget-object v1, p0, Lo/oA;->e:Lo/ox$TaskDescription;

    iget-object v2, p0, Lo/oA;->d:Lo/sE;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lo/ox;->a(Lo/ox;Lo/ox$TaskDescription;Lo/sE;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
