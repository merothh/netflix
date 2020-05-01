.class Lo/ow;
.super Ljava/lang/Object;

# interfaces
.implements Lo/oR;


# instance fields
.field private final b:Lo/ox;

.field private final e:Lo/ox$TaskDescription;


# direct methods
.method public constructor <init>(Lo/ox;Lo/ox$TaskDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ow;->b:Lo/ox;

    iput-object p2, p0, Lo/ow;->e:Lo/ox$TaskDescription;

    return-void
.end method


# virtual methods
.method public b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lo/ow;->b:Lo/ox;

    iget-object v1, p0, Lo/ow;->e:Lo/ox$TaskDescription;

    invoke-static {v0, v1, p1, p2}, Lo/ox;->e(Lo/ox;Lo/ox$TaskDescription;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
