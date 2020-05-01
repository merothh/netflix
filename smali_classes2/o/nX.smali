.class Lo/nX;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ox$TaskDescription;


# instance fields
.field private final a:Lo/nZ$TaskDescription;

.field private final c:Ljava/lang/String;

.field private final d:Lo/nZ;

.field private final e:Lo/ov;


# direct methods
.method public constructor <init>(Lo/nZ;Ljava/lang/String;Lo/ov;Lo/nZ$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/nX;->d:Lo/nZ;

    iput-object p2, p0, Lo/nX;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/nX;->e:Lo/ov;

    iput-object p4, p0, Lo/nX;->a:Lo/nZ$TaskDescription;

    return-void
.end method


# virtual methods
.method public a(Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    iget-object v0, p0, Lo/nX;->d:Lo/nZ;

    iget-object v1, p0, Lo/nX;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/nX;->e:Lo/ov;

    iget-object v3, p0, Lo/nX;->a:Lo/nZ$TaskDescription;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lo/nZ;->e(Lo/nZ;Ljava/lang/String;Lo/ov;Lo/nZ$TaskDescription;Lo/oC;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
