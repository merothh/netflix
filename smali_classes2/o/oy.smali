.class Lo/oy;
.super Ljava/lang/Object;

# interfaces
.implements Lo/oP;


# instance fields
.field private final c:Lo/ox$TaskDescription;

.field private final e:Lo/ox;


# direct methods
.method public constructor <init>(Lo/ox;Lo/ox$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/oy;->e:Lo/ox;

    iput-object p2, p0, Lo/oy;->c:Lo/ox$TaskDescription;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lo/oy;->e:Lo/ox;

    iget-object v1, p0, Lo/oy;->c:Lo/ox$TaskDescription;

    invoke-static {v0, v1, p1, p2, p3}, Lo/ox;->a(Lo/ox;Lo/ox$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
